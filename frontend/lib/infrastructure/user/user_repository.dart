import 'dart:io';
import 'dart:developer' as developer;

import 'package:dartz/dartz.dart';
import 'package:frontend/domain/user/user_domain.dart';
import 'package:frontend/domain/user/user_failure.dart';
import 'package:frontend/domain/user/user_form.dart';
import 'package:frontend/domain/user/user_repository_interface.dart';
import 'package:frontend/infrastructure/user/user_api.dart';
import 'package:frontend/infrastructure/user/user_dto.dart';
import 'package:frontend/infrastructure/user/user_form_mapper.dart';

class UserRepository implements UserRepositoryInterface {
  final UserAPI userApi;

  UserRepository(this.userApi);

  @override
  Future<Either<Userfailure, List<UserDomain>>> getUsers() async {
    try {
      var users = await userApi.getUsers();
      return right(users
          .map((UserDto userDto) => UserDomain.fromJson(userDto.toJson()))
          .toList());
    } catch (e) {
      return left(const Userfailure.serverError());
    }
  }

  @override
  Future<Either<Userfailure, UserDomain>> signup(UserForm userForm) async {
    try {
      var userDto = await userApi.signup(userForm.toDto());
      return right(UserDomain.fromJson(userDto.toJson()));
    } catch (e) {
      return left(const Userfailure.serverError());
    }
  }

  @override
  Future<Either<Userfailure, Unit>> deleteUser(String userId) async {
    try {
      await userApi.deleteUser(userId);
      return right(unit);
    } catch (e) {
      return left(const Userfailure.serverError());
    }
  }
}
