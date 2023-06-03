class ProfileFailure {
  const ProfileFailure._();

  factory ProfileFailure.unexpectedError() = _UnexpectedError;
  factory ProfileFailure.notFoundError() = _NotFoundError;
  factory ProfileFailure.serverError() = _ServerError;
  factory ProfileFailure.invalidEmail() = _InvalidEmail;
  factory ProfileFailure.emailAlreadyInUse() = _EmailAlreadyInUse;
  factory ProfileFailure.customError(String message) = _CustomError;
}

class _UnexpectedError extends ProfileFailure {
  const _UnexpectedError() : super._();
}

class _NotFoundError extends ProfileFailure {
  const _NotFoundError() : super._();
}

class _ServerError extends ProfileFailure {
  const _ServerError() : super._();
}

class _InvalidEmail extends ProfileFailure {
  const _InvalidEmail() : super._();
}

class _EmailAlreadyInUse extends ProfileFailure {
  const _EmailAlreadyInUse() : super._();
}

class _CustomError extends ProfileFailure {
  final String message;

  const _CustomError(this.message) : super._();
}
