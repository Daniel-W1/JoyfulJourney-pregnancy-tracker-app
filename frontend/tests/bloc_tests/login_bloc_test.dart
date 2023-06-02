import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/application/auth/login/bloc/login_bloc.dart';
import 'package:frontend/application/auth/login/bloc/login_event.dart';
import 'package:frontend/application/auth/login/bloc/login_state.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';
import 'package:frontend/domain/auth/auth.dart';
// import 'package:frontend/presentation/login/login_bloc.dart';
// import 'package:frontend/presentation/login/login_event.dart';
// import 'package:frontend/presentation/login/login_state.dart';

class MockAuthRepository extends Mock implements AuthRepositoryInterface {}

void main() {
  late LoginBloc loginBloc;
  late MockAuthRepository mockAuthRepository;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    loginBloc = LoginBloc(authRepositoryInterface: mockAuthRepository);
  });

  tearDown(() {
    loginBloc.close();
  });

  group('LoginBloc', () {
    final loginForm = LoginForm(password: '', userName: ''); // Provide login form data for testing
    final token = 'token'; // Provide a token for testing
    final failure = ('Failed to authenticate'); // Provide an authentication failure

    test('emits LoginStateSuccess when login succeeds', () {
      when(mockAuthRepository.login(loginForm: loginForm))
          .thenAnswer((_) async => Right(token));

      final expected = [
        LoginStateLoading(),
        LoginState.success(token as UserDomain),
      ];

      expectLater(loginBloc.stream, emitsInOrder(expected));

      loginBloc.add(LoginEventLogin(loginForm));
    });

    test('emits LoginStateFailure when login fails', () {
      when(mockAuthRepository.login(loginForm: loginForm))
          .thenAnswer((_) async => Left(failure));

      final expected = [
        LoginStateLoading(),
        LoginState.failure(failure as AuthFailure),
      ];

      expectLater(loginBloc.stream, emitsInOrder(expected));

      loginBloc.add(LoginEventLogin(loginForm));
    });

    test('calls AuthRepositoryInterface.logout() when Logout event is added', () async {
      when(mockAuthRepository.logout()).thenAnswer((_) async => Unit);

      loginBloc.add(LoginEventLogout());

      await untilCalled(mockAuthRepository.logout());

      verify(mockAuthRepository.logout()).called(1);
    });

    // ...
  });
}
