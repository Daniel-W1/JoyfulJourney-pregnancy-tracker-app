import 'dart:convert';

import 'package:frontend/infrastructure/user/user_dto.dart';
import 'package:frontend/infrastructure/user/user_form_dto.dart';
import 'package:frontend/util/jj_http_client.dart';
import 'package:frontend/util/jj_http_exception.dart';

class UserAPI {
  JJHttpClient jjHttpClient = JJHttpClient();

  Future<UserDto> signup(UserFormDto userFormDto) async {
    var user = await jjHttpClient.post("auth/signup",
        body: json.encode(userFormDto.toJson()));

    if (user.statusCode == 201) {
      return UserDto.fromJson(jsonDecode(user.body));
    } else {
      throw JJHttpException(
          json.decode(user.body)['message'] ?? "Unknown error",
          user.statusCode);
    }
  }

  Future<void> deleteUser(String id) async {
    var response = await jjHttpClient.delete("user/$id");

    if (response.statusCode != 204) {
      throw JJHttpException(
          json.decode(response.body)['message'] ?? "Unknown error",
          response.statusCode);
    }
  }

  Future<List<UserDto>> getUsers() async {
    var users = await jjHttpClient.get("user");

    if (users.statusCode == 201) {
      return (jsonDecode(users.body) as List)
          .map((e) => UserDto.fromJson(e))
          .toList();
    } else {
      throw JJHttpException(
          json.decode(users.body)['message'] ?? "Unknown error",
          users.statusCode);
    }
  }  
}
