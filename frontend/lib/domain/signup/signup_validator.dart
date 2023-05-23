import 'package:frontend/domain/signup/confirm_password.dart';
import 'package:frontend/domain/signup/fullname.dart';
import 'package:frontend/domain/signup/password_domain.dart';
import 'package:frontend/domain/signup/username_domain.dart';

class SignupValidator {
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

  String? fullNameValidater(String? value) {
    try {
      FullName(fullName: value);
      return null;
    } catch (e) {
      return e.toString().substring(10);
    }
  }

  String? confrimPasswordValidator(String? value, String password) {
    try {
      ConfirmPassword(confirmPassword: value, password: password);
      return null;
    } catch (e) {
      return e.toString().substring(10);
    }
  }
}
