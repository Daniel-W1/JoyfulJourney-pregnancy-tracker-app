import 'package:dartz/dartz.dart';
import 'package:frontend/domain/user/user_domain.dart';
import 'package:frontend/domain/user/user_failure.dart';
import 'package:frontend/domain/user/user_form.dart';

abstract class UserRepositoryInterface {
  Future<Either<Userfailure, List<UserDomain>>> getUsers();
  Future<Either<Userfailure, UserDomain>> signup(UserForm note);
  Future<Either<Userfailure, Unit>> deleteUser(String userId);
}
