class Userfailure {
  const Userfailure._();

  factory Userfailure.serverError() = ServerError;
  factory Userfailure.networkError() = NetworkError;
  factory Userfailure.unauthorized() = Unauthorized;
  factory Userfailure.notFound() = NotFound;
  factory Userfailure.permissionDenied() = PermissionDenied;
  factory Userfailure.forbidden() = Forbidden;
  factory Userfailure.emptyTitleError() = EmptyTitleError;
  factory Userfailure.emptyDescriptionError() = EmptyDescriptionError;
}

class ServerError extends Userfailure {
  const ServerError() : super._();
}

class NetworkError extends Userfailure {
  const NetworkError() : super._();
}

class Unauthorized extends Userfailure {
  const Unauthorized() : super._();
}

class NotFound extends Userfailure {
  const NotFound() : super._();
}

class PermissionDenied extends Userfailure {
  const PermissionDenied() : super._();
}

class Forbidden extends Userfailure {
  const Forbidden() : super._();
}

class EmptyTitleError extends Userfailure {
  const EmptyTitleError() : super._();
}

class EmptyDescriptionError extends Userfailure {
  const EmptyDescriptionError() : super._();
}
