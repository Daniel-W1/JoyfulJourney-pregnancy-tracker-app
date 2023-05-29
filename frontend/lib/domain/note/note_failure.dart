class NoteFailure {
  const NoteFailure._();

  factory NoteFailure.serverError() = ServerError;
  factory NoteFailure.networkError() = NetworkError;
  factory NoteFailure.unauthorized() = Unauthorized;
  factory NoteFailure.notFound() = NotFound;
  factory NoteFailure.permissionDenied() = PermissionDenied;
  factory NoteFailure.forbidden() = Forbidden;
  factory NoteFailure.emptyTitleError() = EmptyTitleError;
  factory NoteFailure.emptyDescriptionError() = EmptyDescriptionError;
}

class ServerError extends NoteFailure {
  const ServerError() : super._();
}

class NetworkError extends NoteFailure {
  const NetworkError() : super._();
}

class Unauthorized extends NoteFailure {
  const Unauthorized() : super._();
}

class NotFound extends NoteFailure {
  const NotFound() : super._();
}

class PermissionDenied extends NoteFailure {
  const PermissionDenied() : super._();
}

class Forbidden extends NoteFailure {
  const Forbidden() : super._();
}

class EmptyTitleError extends NoteFailure {
  const EmptyTitleError() : super._();
}

class EmptyDescriptionError extends NoteFailure {
  const EmptyDescriptionError() : super._();
}
