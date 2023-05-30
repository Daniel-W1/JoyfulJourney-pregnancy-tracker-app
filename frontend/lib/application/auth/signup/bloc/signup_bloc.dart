import 'package:bloc/bloc.dart';

import 'package:frontend/domain/auth/auth.dart';
import  'signup_event.dart';
import 'signup_state.dart';

class LoginBloc extends Bloc<SignupEvent, SignupState> {
  final AuthRepositoryInterface authRepositoryInterface;

  LoginBloc({required this.authRepositoryInterface}) : super(const SignupInitial()) {
    
    on<SignupEvent>((event, emit) async {
      if (event is SignupEventSignup) {
        emit(const SignupLoading());
        final result = await authRepositoryInterface.signup(signupForm: event.signupForm);
        result.fold(
          (failure) => emit(SignupState.failure(failure)),
          (user) => emit(SignupState.success(user)),
        );
      // } else if (event is SignupEventChangePassword) {
      //   emit(const SignupLoading());
      //     await authRepositoryInterface.changePassword();
     }
    });

  }
}
