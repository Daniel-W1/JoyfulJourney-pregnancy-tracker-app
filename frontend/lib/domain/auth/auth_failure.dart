import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.networkError() = NetworkError;
  const factory AuthFailure.invalidEmailAndPasswordCombination() =
      InvalidEmailAndPasswordCombination;
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthFailure.invalidEmail() = InvalidEmail;
  const factory AuthFailure.invalidPassword() = InvalidPassword;
  const factory AuthFailure.unexpected() = Unexpected;
  // add user name
  const factory AuthFailure.invalidUserName() = InvalidUserName;
}