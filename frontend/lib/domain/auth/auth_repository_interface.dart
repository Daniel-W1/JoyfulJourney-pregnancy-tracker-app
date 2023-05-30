import 'package:dartz/dartz.dart';
import 'package:frontend/domain/auth/change_password_form.dart';
import 'package:frontend/domain/auth/login_form.dart';
import 'package:frontend/domain/auth/signup_form.dart';
import 'package:frontend/domain/auth/user_domain.dart';

import 'auth_failure.dart';

abstract class AuthRepositoryInterface {
  Future<dynamic> signup({required SignupForm signupForm});

  Future<dynamic> login({required LoginForm loginForm});

  Future<void> logout();

  // Future<dynamic> changePassword(
  //     {required ChangePasswordForm changePasswordForm});

}