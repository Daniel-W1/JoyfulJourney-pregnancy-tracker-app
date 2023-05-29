import 'package:frontend/domain/auth/auth.dart';

abstract class SignupState {
  const SignupState._();

  const factory SignupState.initial() = SignupInitial;

  const factory SignupState.loading() = SignupLoading;

  const factory SignupState.success(String token, UserDomain user) = SignupSuccess;

  const factory SignupState.failure(AuthFailure failure) = SignUpFailure;

  SignupState copyWith({
    String? token,
    UserDomain? user,
    AuthFailure? failure,
  }) {
    if (this is SignupSuccess && token != null && user != null) {
      return SignupState.success(token, user);
    } else if (this is SignUpFailure && failure != null) {
      return SignupState.failure(failure);
    } else {
      return this;
    }
  }
}

class SignupInitial extends SignupState {
  const SignupInitial() : super._();
}

class SignupLoading extends SignupState {
  const SignupLoading() : super._();
}

class SignupSuccess extends SignupState {
  final String token;
  final UserDomain user;

  const SignupSuccess(this.token, this.user) : super._();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SignupSuccess &&
          runtimeType == other.runtimeType &&
          token == other.token &&
          user == other.user;

  @override
  int get hashCode => runtimeType.hashCode ^ token.hashCode ^ user.hashCode;

}

class SignUpFailure extends SignupState {
  final AuthFailure failure;

  const SignUpFailure(this.failure) : super._();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SignUpFailure &&
          runtimeType == other.runtimeType &&
          failure == other.failure;

  @override
  int get hashCode => runtimeType.hashCode ^ failure.hashCode;

}