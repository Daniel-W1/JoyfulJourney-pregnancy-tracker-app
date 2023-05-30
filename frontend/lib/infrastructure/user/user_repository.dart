import 'package:dartz/dartz.dart';
import 'package:frontend/domain/auth/auth_failure.dart';
import 'package:frontend/domain/auth/user_domain.dart';
import 'package:frontend/domain/user/user_repository_interface.dart';
import 'package:frontend/infrastructure/user/user_api.dart';
import 'package:frontend/infrastructure/auth/user_dto.dart';

class UserRepository implements UserRepositoryInterface {
  final UserAPI userApi;

  UserRepository(this.userApi);

  @override
  Future<Either<AuthFailure, List<UserDomain>>> getUsers() async {
    try {
      var users = await userApi.getUsers();
      return right(users
          .map((UserDto userDto) => UserDomain.fromJson(userDto.toJson()))
          .toList());
    } catch (e) {
      return left( AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> deleteUser(String userId) async {
    try {
      await userApi.deleteUser(userId);
      return right(unit);
    } catch (e) {
      return left(AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, UserDomain>> setUserRole(UserDomain user) async {
    try {
      var userDto = await userApi.setUserRole(user);
      return right(UserDomain.fromJson(userDto.toJson()));
    } catch (e) {
      return left(AuthFailure.serverError());
    }
  }
}
