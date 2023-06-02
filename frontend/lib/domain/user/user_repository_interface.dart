import 'package:dartz/dartz.dart';
import 'package:frontend/domain/auth/auth_failure.dart';
import 'package:frontend/domain/auth/user_domain.dart';

abstract class UserRepositoryInterface {
  Future<Either<AuthFailure, List<UserDomain>>> getUsers();
  Future<Either<AuthFailure, UserDomain>> setUserRole(UserDomain user);
  Future<Either<AuthFailure, Unit>> deleteUser();
}
