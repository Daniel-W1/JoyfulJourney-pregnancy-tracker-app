import 'package:freezed_annotation/freezed_annotation.dart';
part 'appointment_failure.freezed.dart';

@freezed
class Appointmentfailure with _$Appointmentfailure {
  const factory Appointmentfailure.serverError() = ServerError;
  const factory Appointmentfailure.networkError() = NetworkError;
  const factory Appointmentfailure.unauthorized() = Unauthorized;
  const factory Appointmentfailure.notFound() = NotFound;
  const factory Appointmentfailure.permissionDenied() = PermissionDenied;
  const factory Appointmentfailure.forbidden() = Forbidden;
  const factory Appointmentfailure.emptyTitleError() = EmptyTitleError;
  const factory Appointmentfailure.emptyDescriptionError() = EmptyDescriptionError;
  const factory Appointmentfailure.emptyDateError() = EmptyDateError;
  const factory Appointmentfailure.emptyTimeError() = EmptyTimeError;
}