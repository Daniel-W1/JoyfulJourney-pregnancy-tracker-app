class PostFailure {
  const PostFailure._();

  factory PostFailure.serverError() = ServerError;
  factory PostFailure.networkError() = NetworkError;
  factory PostFailure.unauthorized() = Unauthorized;
  factory PostFailure.notFound() = NotFound;
  factory PostFailure.permissionDenied() = PermissionDenied;
  factory PostFailure.forbidden() = Forbidden;
  factory PostFailure.emptyTitleError() = EmptyTitleError;
  factory PostFailure.emptyDescriptionError() = EmptyDescriptionError;
  factory PostFailure.emptyauthorError() = EmptyauthorError;
  factory PostFailure.InvalidcommentError() = InvalidcommentError;
  factory PostFailure.InvalidlikeError() = InvalidlikeError;
  factory PostFailure.validationError(String message) = ValidationError;
  factory PostFailure.customError(String message) = CustomError;
}

class ServerError extends PostFailure {
  const ServerError() : super._();
}

class NetworkError extends PostFailure {
  const NetworkError() : super._();
}

class Unauthorized extends PostFailure {
  const Unauthorized() : super._();
}

class NotFound extends PostFailure {
  const NotFound() : super._();
}

class PermissionDenied extends PostFailure {
  const PermissionDenied() : super._();
}

class Forbidden extends PostFailure {
  const Forbidden() : super._();
}

class EmptyTitleError extends PostFailure {
  const EmptyTitleError() : super._();
}

class EmptyDescriptionError extends PostFailure {
  const EmptyDescriptionError() : super._();
}

class EmptyauthorError extends PostFailure {
  const EmptyauthorError() : super._();
}

class InvalidcommentError extends PostFailure {
  const InvalidcommentError() : super._();
}

class InvalidlikeError extends PostFailure {
  const InvalidlikeError() : super._();
}

class ValidationError extends PostFailure {
  final String message;
  const ValidationError(this.message) : super._();
}

class CustomError extends PostFailure {
  final String message;
  const CustomError(this.message) : super._();
}