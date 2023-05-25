import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_failure.freezed.dart';

@freezed
abstract class ProfileFailure with _$ProfileFailure {
  const factory ProfileFailure.unexpectedError() = _UnexpectedError;
  const factory ProfileFailure.notFoundError() = _NotFoundError;
  const factory ProfileFailure.serverError() = _ServerError;
  const factory ProfileFailure.invalidEmail() = _InvalidEmail;
  const factory ProfileFailure.emailAlreadyInUse() = _EmailAlreadyInUse;
}