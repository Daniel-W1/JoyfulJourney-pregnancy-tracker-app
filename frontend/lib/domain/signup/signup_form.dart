import 'package:frontend/domain/signup/email.dart';
import 'package:frontend/domain/signup/fullname.dart';
import 'package:frontend/domain/signup/password_domain.dart';

class SignUpForm {
  final FullName name;
  final EmailAddress emailAddress;
  final Password password;
  final Password confirmPassword;

  SignUpForm({
    required this.name,
    required this.emailAddress,
    required this.password,
    required this.confirmPassword,
  });
}
