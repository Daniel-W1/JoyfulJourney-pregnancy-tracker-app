import 'package:freezed_annotation/freezed_annotation.dart';
part 'signup_failure.freezed.dart';

@freezed
class Signupfailure with _$Signupfailure {
  const factory Signupfailure.serverError() = ServerError;
  const factory Signupfailure.networkError() = NetworkError;
  const factory Signupfailure.invalidEmailAndPasswordCombination() =
      InvalidEmailAndPasswordCombination;
  const factory Signupfailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory Signupfailure.invalidEmail() = InvalidEmail;
  const factory Signupfailure.invalidPassword() = InvalidPassword;
  const factory Signupfailure.unexpected() = Unexpected;
}