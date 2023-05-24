import 'package:frontend/domain/auth/loggedin_domain.dart';
import 'package:frontend/domain/auth/login_response.dart';
import 'package:frontend/domain/signup/signup_user_domain.dart';
import 'package:frontend/domain/user/user.dart';

abstract class AuthRepositoryInterface {
  Future<User> register({required SignupDomain registerForm});

  Future<LoginResponse> login({required LoggedInDomain loginForm});

  Future<String?> getAuthToken();

  Future<void> logout();

  Future<User?> getAuthenticatedUser();

  User? getAuthenticatedUserSync();
}