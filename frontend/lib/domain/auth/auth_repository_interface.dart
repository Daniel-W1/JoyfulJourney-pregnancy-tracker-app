import 'package:frontend/domain/auth/change_password_form.dart';
import 'package:frontend/domain/auth/login_form.dart';
import 'package:frontend/domain/signup/signup_form.dart';

abstract class AuthRepositoryInterface {
  Future<dynamic> signup({required SignUpForm registerForm});

  Future<dynamic> login({required LoginForm loginForm});

  Future<void> logout();

  Future<dynamic> changePassword(
      {required ChangePasswordForm changePasswordForm});

}