import 'package:frontend/domain/auth/user_name_domain.dart';
import 'package:frontend/domain/auth/password_domain.dart';

class LoginForm {
  final String username;
  final String password;

  LoginForm({
    required this.username,
    required this.password,
  });
}
