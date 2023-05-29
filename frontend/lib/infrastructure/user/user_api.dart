import 'dart:convert';

import 'package:frontend/domain/auth/user_domain.dart';
import 'package:frontend/infrastructure/auth/user_dto.dart';
import 'package:frontend/util/jj_http_client.dart';
import 'package:frontend/util/jj_http_exception.dart';

class UserAPI {
  JJHttpClient jjHttpClient = JJHttpClient();

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

  Future<UserDto> setUserRole(UserDomain user) async {
    var response = await jjHttpClient.put("user/role/${user.id}", body: user.toJson());

    if (response.statusCode == 201) {
      return UserDto.fromJson(jsonDecode(response.body));
    } else {
      throw JJHttpException(
          json.decode(response.body)['message'] ?? "Unknown error",
          response.statusCode);
    }
  }  
}
