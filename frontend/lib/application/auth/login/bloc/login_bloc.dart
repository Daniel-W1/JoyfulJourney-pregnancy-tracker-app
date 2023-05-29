import 'package:bloc/bloc.dart';

import 'package:frontend/domain/auth/auth.dart';
import  'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepositoryInterface authRepositoryInterface;

  LoginBloc({required this.authRepositoryInterface}) : super(const LoginStateInitial()) {
    
    on<LoginEvent>((event, emit) async {
      if (event is LoginEventLogin) {
        emit(const LoginStateLoading());
        final result = await authRepositoryInterface.login(loginForm:event.loginForm);
        result.fold(
          (failure) => emit(LoginState.failure(failure)),
          (token) => emit(LoginState.success(token)),
        );
      } else if (event is LoginEventLogout) {
        emit(const LoginStateLoading());
          await authRepositoryInterface.logout();
      }
    });

  }
}
