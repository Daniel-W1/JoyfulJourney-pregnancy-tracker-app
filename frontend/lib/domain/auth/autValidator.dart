import 'package:frontend/domain/auth/password_domain.dart';
import 'package:frontend/domain/auth/user_name_domain.dart';

class authValidator {
  String? usernameValidater(String? value) {
    try {
      Username(username: value);
      return null;
    } catch (e) {
      return e.toString().substring(10);
    }
  }

  String? passwordValidater(String? value) {
    try {
      Password(password: value);
      return null;
    } catch (e) {
      return e.toString().substring(10);
    }
  }
}
