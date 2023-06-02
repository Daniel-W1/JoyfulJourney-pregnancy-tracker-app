import 'dart:convert';

import 'package:frontend/infrastructure/auth/login_response_dto.dart';
import 'package:frontend/infrastructure/auth/signup_form_dto.dart';
import 'package:frontend/infrastructure/auth/user_dto.dart';
import 'package:frontend/local_data/shared_preferences/jj_shared_preferences_service.dart';
import 'package:frontend/util/jj_http_client.dart';
import 'package:frontend/util/jj_http_exception.dart';

import '../../domain/auth/change_password_form.dart';

class AuthApi {
  static const String _loginUrl = "auth/login";
  static const String _signupUrl = "auth/signup";

  JJHttpClient _httpClient = JJHttpClient();
  SharedPreferenceService sharedPreferenceService = SharedPreferenceService();

  AuthApi();

  Future<LoginResponseDto> login(
      {required String username, required String password}) async {
    var body = jsonEncode({
      'username': username,
      'password': password,
    });

    var response = await _httpClient.post(_loginUrl, body: body);
    print(response.statusCode);

    final Map<String, dynamic> data = await json.decode(response.body);
    print("here");
    if (response.statusCode == 201) {
      return LoginResponseDto.fromJson(data);
    } else {
      throw JJHttpException(
          json.decode(response.body)['message'] ?? "Unknown error",
          response.statusCode);
    }
  }

  Future<UserDto> signup({required SignupFormDto signupFormDto}) async {
    print(signupFormDto.toJson());
    var response = await _httpClient.post(_signupUrl,
        body: json.encode(signupFormDto.toJson()));

    final Map<String, dynamic> data = json.decode(response.body);
    print(response.statusCode);
    if (response.statusCode == 201) {
      return UserDto.fromJson(data);
    } else {
      throw JJHttpException(
          json.decode(response.body)['message'] ?? "Unknown error",
          response.statusCode);
    }
  }

  // change password
  Future<dynamic> changePassword(
      {required ChangePasswordForm changePasswordForm}) async {
    var user = await sharedPreferenceService.getAuthenticatedUser();
    var username = user!.username;
    var body = jsonEncode({
      'username': username,
      'currentPassword': changePasswordForm.currentPassword,
      'newPassword': changePasswordForm.newPassword,
    });
    var response = await _httpClient.patch("auth/change-password", body: body);

    if (response.statusCode >= 200 && response.statusCode < 300) {
      return;
    } else {
      throw JJHttpException(
          json.decode(response.body)['message'] ?? "Unknown error",
          response.statusCode);
    }
  }
}
