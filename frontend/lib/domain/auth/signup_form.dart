import 'package:frontend/domain/auth/email_domain.dart';
import 'package:frontend/domain/auth/password_domain.dart';
import 'package:frontend/domain/auth/user_name_domain.dart';

class SignupForm {
  final Username username;
  final Password password;
  final EmailAddress email;

  SignupForm({
    required this.username,
    required this.password,
    required this.email,
  });

  // factory SignupForm.fromJson(Map<String, dynamic> json) {
  //   return SignupForm(
  //     username: json['username'] as String,
  //     password: json['password'] as String,
  //     email: json['email'] as String,
  //   );
  // }
}
