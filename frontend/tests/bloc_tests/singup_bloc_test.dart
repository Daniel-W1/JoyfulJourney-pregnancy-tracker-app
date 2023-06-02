import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/application/auth/signup/bloc/signup_bloc.dart';
import 'package:frontend/application/auth/signup/bloc/signup_event.dart';
import 'package:frontend/application/auth/signup/bloc/signup_state.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';
import 'package:frontend/domain/auth/auth.dart';
// import 'package:frontend/presentation/signup/signup_bloc.dart';
// import 'package:frontend/presentation/signup/signup_event.dart';
// import 'package:frontend/presentation/signup/signup_state.dart';

class MockAuthRepository extends Mock implements AuthRepositoryInterface {}

void main() {
  late SignupBloc signupBloc;
  late MockAuthRepository mockAuthRepository;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    signupBloc = SignupBloc(authRepositoryInterface: mockAuthRepository);
  });

  tearDown(() {
    signupBloc.close();
  });

  group('SignupBloc', () {
    final signupForm = SignupForm( email: '', password: '', username: ''); // Provide signup form data for testing
    final user = []; // Provide a user object for testing
    final failure = ('Failed to sign up'); // Provide a sign-up failure

    test('emits SignupStateSuccess when sign up succeeds', () {
      when(mockAuthRepository.signup(signupForm: signupForm))
          .thenAnswer((_) async => Right(user));

      final expected = [
        SignupLoading(),
        SignupState.success(user as UserDomain),
      ];

      expectLater(signupBloc.stream, emitsInOrder(expected));

      signupBloc.add(SignupEventSignup(signupForm));
    });

    test('emits SignupStateFailure when sign up fails', () {
      when(mockAuthRepository.signup(signupForm: signupForm))
          .thenAnswer((_) async => Left(failure));

      final expected = [
        SignupLoading(),
        SignupState.failure(failure as AuthFailure),
      ];

      expectLater(signupBloc.stream, emitsInOrder(expected));

      signupBloc.add(SignupEventSignup(signupForm));
    });

    // ...
  });
}
