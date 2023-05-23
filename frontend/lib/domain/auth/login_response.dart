import 'package:frontend/domain/user/user.dart';

class LoginResponse {
  final User user;
  final String token;

  LoginResponse({required this.user, required this.token});
}
