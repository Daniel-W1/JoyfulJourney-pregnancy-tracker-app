
import 'package:frontend/domain/auth/auth.dart';

abstract class LoginEvent {
  const LoginEvent._();

  const factory LoginEvent.login(LoginForm loginForm) = LoginEventLogin;

  const factory LoginEvent.logout() = LoginEventLogout;
}

class LoginEventLogin extends LoginEvent {
  final LoginForm loginForm;

  const LoginEventLogin(this.loginForm) : super._();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LoginEventLogin &&
          runtimeType == other.runtimeType &&
          loginForm == other.loginForm;

  @override
  int get hashCode => runtimeType.hashCode ^ loginForm.hashCode;
}

class LoginEventLogout extends LoginEvent {
  const LoginEventLogout() : super._();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LoginEventLogout &&
          runtimeType == other.runtimeType;

  @override
  int get hashCode => runtimeType.hashCode;
}