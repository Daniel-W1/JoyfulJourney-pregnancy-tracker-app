class TipFailure {
  const TipFailure._();

  factory TipFailure.serverError() = ServerError;
  factory TipFailure.networkError() = NetworkError;
  factory TipFailure.unauthorized() = Unauthorized;
  factory TipFailure.notFound() = NotFound;
  factory TipFailure.permissionDenied() = PermissionDenied;
  factory TipFailure.forbidden() = Forbidden;
  factory TipFailure.emptyTitleError() = EmptyTitleError;
  factory TipFailure.emptyDescriptionError() = EmptyDescriptionError;
  factory TipFailure.emptyAuthorError() = EmptyAuthorError;
  factory TipFailure.invalidCommentError() = InvalidCommentError;
  factory TipFailure.invalidLikeError() = InvalidLikeError;
  factory TipFailure.customError(String message) = CustomError;
}

class ServerError extends TipFailure {
  const ServerError() : super._();
}

class NetworkError extends TipFailure {
  const NetworkError() : super._();
}

class Unauthorized extends TipFailure {
  const Unauthorized() : super._();
}

class NotFound extends TipFailure {
  const NotFound() : super._();
}

class PermissionDenied extends TipFailure {
  const PermissionDenied() : super._();
}

class Forbidden extends TipFailure {
  const Forbidden() : super._();
}

class EmptyTitleError extends TipFailure {
  const EmptyTitleError() : super._();
}

class EmptyDescriptionError extends TipFailure {
  const EmptyDescriptionError() : super._();
}

class EmptyAuthorError extends TipFailure {
  const EmptyAuthorError() : super._();
}

class InvalidCommentError extends TipFailure {
  const InvalidCommentError() : super._();
}

class InvalidLikeError extends TipFailure {
  const InvalidLikeError() : super._();
}

class CustomError extends TipFailure {
  final String message;
  const CustomError(this.message) : super._();
}
