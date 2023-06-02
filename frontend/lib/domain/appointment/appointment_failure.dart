class AppointmentFailure {
  const AppointmentFailure._();

  factory AppointmentFailure.serverError() = ServerError;
  factory AppointmentFailure.networkError() = NetworkError;
  factory AppointmentFailure.unauthorized() = Unauthorized;
  factory AppointmentFailure.notFound() = NotFound;
  factory AppointmentFailure.permissionDenied() = PermissionDenied;
  factory AppointmentFailure.forbidden() = Forbidden;
  factory AppointmentFailure.emptyTitleError() = EmptyTitleError;
  factory AppointmentFailure.emptyDescriptionError() = EmptyDescriptionError;
  factory AppointmentFailure.emptyDateError() = EmptyDateError;
  factory AppointmentFailure.emptyTimeError() = EmptyTimeError;
  factory AppointmentFailure.validationError(String message) = ValidationError;
}

class ServerError extends AppointmentFailure {
  const ServerError() : super._();
}

class NetworkError extends AppointmentFailure {
  const NetworkError() : super._();
}

class Unauthorized extends AppointmentFailure {
  const Unauthorized() : super._();
}

class NotFound extends AppointmentFailure {
  const NotFound() : super._();
}

class PermissionDenied extends AppointmentFailure {
  const PermissionDenied() : super._();
}

class Forbidden extends AppointmentFailure {
  const Forbidden() : super._();
}

class EmptyTitleError extends AppointmentFailure {
  const EmptyTitleError() : super._();
}

class EmptyDescriptionError extends AppointmentFailure {
  const EmptyDescriptionError() : super._();
}

class EmptyDateError extends AppointmentFailure {
  const EmptyDateError() : super._();
}

class EmptyTimeError extends AppointmentFailure {
  const EmptyTimeError() : super._();
}

class ValidationError extends AppointmentFailure {
  final String message;

  const ValidationError(this.message) : super._();
}
