import 'package:frontend/domain/auth/auth.dart';

abstract class LoginState {
  const LoginState._();

  const factory LoginState.initial() = LoginStateInitial;

  const factory LoginState.loading() = LoginStateLoading;

  const factory LoginState.success(UserDomain user) = LoginStateSuccess;

  const factory LoginState.failure(AuthFailure failure) = LoginStateFailure;

  LoginState copyWith({
    UserDomain? user,
    AuthFailure? failure,
  }) {
    if (this is LoginStateSuccess && user != null) {
      return LoginState.success(user);
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
  final UserDomain user;
  // final UserDomain user;

  const LoginStateSuccess(this.user) : super._();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LoginStateSuccess &&
          runtimeType == other.runtimeType &&
          user == other.user;
          // user == other.user;

  @override
  int get hashCode => runtimeType.hashCode ^ user.hashCode;

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