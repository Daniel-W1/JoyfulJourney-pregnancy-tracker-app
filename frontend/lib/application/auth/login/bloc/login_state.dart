import 'package:frontend/domain/auth/auth.dart';

abstract class LoginState {
  const LoginState._();

  const factory LoginState.initial() = LoginStateInitial;

  const factory LoginState.loading() = LoginStateLoading;

  const factory LoginState.success(String token) = LoginStateSuccess;

  const factory LoginState.failure(AuthFailure failure) = LoginStateFailure;

  LoginState copyWith({
    String? token,
    UserDomain? user,
    AuthFailure? failure,
  }) {
    if (this is LoginStateSuccess && token != null && user != null) {
      return LoginState.success(token);
    } else if (this is LoginStateFailure && failure != null) {
      return LoginState.failure(failure);
    } else {
      return this;
    }
  }
}

class LoginStateInitial extends LoginState {
  const LoginStateInitial() : super._();
}

class LoginStateLoading extends LoginState {
  const LoginStateLoading() : super._();
}

class LoginStateSuccess extends LoginState {
  final String token;
  // final UserDomain user;

  const LoginStateSuccess(this.token) : super._();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LoginStateSuccess &&
          runtimeType == other.runtimeType &&
          token == other.token;
          // user == other.user;

  @override
  int get hashCode => runtimeType.hashCode ^ token.hashCode;

}

class LoginStateFailure extends LoginState {
  final AuthFailure failure;

  const LoginStateFailure(this.failure) : super._();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LoginStateFailure &&
          runtimeType == other.runtimeType &&
          failure == other.failure;

  @override
  int get hashCode => runtimeType.hashCode ^ failure.hashCode;

}