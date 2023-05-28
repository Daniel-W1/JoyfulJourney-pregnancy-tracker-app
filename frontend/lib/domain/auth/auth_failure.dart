class AuthFailure {
  const AuthFailure._();

  factory AuthFailure.serverError() = ServerError;
  factory AuthFailure.networkError() = NetworkError;
  factory AuthFailure.invalidEmailAndPasswordCombination() =
      InvalidEmailAndPasswordCombination;
  factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  factory AuthFailure.invalidEmail() = InvalidEmail;
  factory AuthFailure.invalidPassword() = InvalidPassword;
  factory AuthFailure.unexpected() = Unexpected;
  factory AuthFailure.invalidUserName() = InvalidUserName;
}

class ServerError extends AuthFailure {
  const ServerError() : super._();
}

class NetworkError extends AuthFailure {
  const NetworkError() : super._();
}

class InvalidEmailAndPasswordCombination extends AuthFailure {
  const InvalidEmailAndPasswordCombination() : super._();
}

class EmailAlreadyInUse extends AuthFailure {
  const EmailAlreadyInUse() : super._();
}

class InvalidEmail extends AuthFailure {
  const InvalidEmail() : super._();
}

class InvalidPassword extends AuthFailure {
  const InvalidPassword() : super._();
}

class Unexpected extends AuthFailure {
  const Unexpected() : super._();
}

class InvalidUserName extends AuthFailure {
  const InvalidUserName() : super._();
}
