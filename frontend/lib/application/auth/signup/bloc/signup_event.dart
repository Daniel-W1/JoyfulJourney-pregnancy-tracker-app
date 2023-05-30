
import 'package:frontend/domain/auth/auth.dart';

abstract class SignupEvent {
  const SignupEvent._();

  const factory SignupEvent.signup(SignupForm signupForm) = SignupEventSignup;

  const factory SignupEvent.changePassword(ChangePasswordForm changePasswordForm) = SignupEventChangePassword;
}

class SignupEventSignup extends SignupEvent {
  final SignupForm signupForm;

  const SignupEventSignup(this.signupForm) : super._();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SignupEventSignup &&
          runtimeType == other.runtimeType &&
          signupForm == other.signupForm;

  @override
  int get hashCode => runtimeType.hashCode ^ signupForm.hashCode;
}

class SignupEventChangePassword extends SignupEvent {
  final ChangePasswordForm changePasswordForm;

  const SignupEventChangePassword(this.changePasswordForm) : super._();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SignupEventChangePassword &&
          runtimeType == other.runtimeType &&
          changePasswordForm == other.changePasswordForm;

  @override
  int get hashCode => runtimeType.hashCode ^ changePasswordForm.hashCode;
}