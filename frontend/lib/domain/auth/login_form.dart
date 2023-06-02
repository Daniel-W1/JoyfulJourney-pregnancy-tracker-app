import 'package:frontend/domain/auth/user_name_domain.dart';
import 'package:frontend/domain/auth/password_domain.dart';

class LoginForm {
  final String userName;
  final String password;

  LoginForm({
    required this.userName,
    required this.password,
  });
}
