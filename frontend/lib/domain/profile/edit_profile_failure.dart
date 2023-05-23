import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_profile_failure.freezed.dart';

@freezed
abstract class EditProfileFailure with _$EditProfileFailure {
  const factory EditProfileFailure.unexpectedError() = _UnexpectedError;
  const factory EditProfileFailure.notFoundError() = _NotFoundError;
  const factory EditProfileFailure.serverError() = _ServerError;
  const factory EditProfileFailure.invalidEmail() = _InvalidEmail;
  const factory EditProfileFailure.emailAlreadyInUse() = _EmailAlreadyInUse;
}