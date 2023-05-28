class Signupfailure {
  const Signupfailure._();

  factory Signupfailure.serverError() = ServerError;
  factory Signupfailure.networkError() = NetworkError;
  factory Signupfailure.invalidEmailAndPasswordCombination() = InvalidEmailAndPasswordCombination;
  factory Signupfailure.emailAlreadyInUse() = EmailAlreadyInUse;
  factory Signupfailure.invalidEmail() = InvalidEmail;
  factory Signupfailure.invalidPassword() = InvalidPassword;
  factory Signupfailure.unexpected() = Unexpected;
}

class ServerError extends Signupfailure {
  const ServerError() : super._();
}

class NetworkError extends Signupfailure {
  const NetworkError() : super._();
}

class InvalidEmailAndPasswordCombination extends Signupfailure {
  const InvalidEmailAndPasswordCombination() : super._();
}

class EmailAlreadyInUse extends Signupfailure {
  const EmailAlreadyInUse() : super._();
}

class InvalidEmail extends Signupfailure {
  const InvalidEmail() : super._();
}

class InvalidPassword extends Signupfailure {
  const InvalidPassword() : super._();
}

class Unexpected extends Signupfailure {
  const Unexpected() : super._();
}
