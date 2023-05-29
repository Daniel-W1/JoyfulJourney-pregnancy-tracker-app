import 'dart:convert';

import 'package:frontend/infrastructure/auth/login_response_dto.dart';
import 'package:frontend/infrastructure/auth/signup_form_dto.dart';
import 'package:frontend/infrastructure/auth/user_dto.dart';
import 'package:frontend/util/jj_http_client.dart';
import 'package:frontend/util/jj_http_exception.dart';

class AuthApi {
  static const String _loginUrl = "auth/login";
  static const String _signupUrl = "auth/signup";

  final JJHttpClient _httpClient;

  AuthApi(this._httpClient);

  Future<LoginResponseDto> login(
      {required String username, required String password}) async {
    var body = jsonEncode({
      'username': username,
      'password': password,
    });

    var response = await _httpClient.post(_loginUrl, body: body);

    final Map<String, dynamic> data = json.decode(response.body);

    if (response.statusCode == 200) {
      return LoginResponseDto.fromJson(data);
    } else {
      throw JJHttpException(
          json.decode(response.body)['message'] ?? "Unknown error",
          response.statusCode);
    }
  }

  Future<UserDto> signup({required SignupFormDto signupFormDto}) async {
    var response = await _httpClient.post(_signupUrl,
        body: json.encode(signupFormDto.toJson()));

    final Map<String, dynamic> data = json.decode(response.body);

    if (response.statusCode == 201) {
      return UserDto.fromJson(data);
    } else {
      throw JJHttpException(
          json.decode(response.body)['message'] ?? "Unknown error",
          response.statusCode);
    }
  }

  // change password
  // Future<void> changePassword(ChangePasswordForm changePasswordForm) async {
  //   var body = jsonEncode({
  //     'currentPassword': changePasswordForm.currentPassword.value,
  //     'newPassword': changePasswordForm.newPassword.value,
  //   });
  //   var response =
  //       await _httpClient.patch("profile/change-password", body: body);

  //   if (response.statusCode == 200) {
  //     return;
  //   } else {
  //     throw QHttpException(
  //         json.decode(response.body)['message'] ?? "Unknown error",
  //         response.statusCode);
  //   }
  // }
}
