class CommentFailure {
  const CommentFailure._();

  factory CommentFailure.serverError() = ServerError;
  factory CommentFailure.networkError() = NetworkError;
  factory CommentFailure.unauthorized() = Unauthorized;
  factory CommentFailure.notFound() = NotFound;
  factory CommentFailure.permissionDenied() = PermissionDenied;
  factory CommentFailure.forbidden() = Forbidden;
  factory CommentFailure.emptyTitleError() = EmptyTitleError;
  factory CommentFailure.emptyDescriptionError() = EmptyDescriptionError;
  factory CommentFailure.validationError(String message) = ValidationError;
  factory CommentFailure.customError(String message) = CustomError;
}

class ServerError extends CommentFailure implements Exception {
  const ServerError() : super._();
}

class NetworkError extends CommentFailure {
  const NetworkError() : super._();
}

class Unauthorized extends CommentFailure {
  const Unauthorized() : super._();
}

class NotFound extends CommentFailure {
  const NotFound() : super._();
}

class PermissionDenied extends CommentFailure {
  const PermissionDenied() : super._();
}

class Forbidden extends CommentFailure {
  const Forbidden() : super._();
}

class EmptyTitleError extends CommentFailure {
  const EmptyTitleError() : super._();
}

class EmptyDescriptionError extends CommentFailure {
  const EmptyDescriptionError() : super._();
}

class ValidationError extends CommentFailure {
  final String message;
  const ValidationError(this.message) : super._();
}

class CustomError extends CommentFailure {
  final String message;
  const CustomError(this.message) : super._();
}
