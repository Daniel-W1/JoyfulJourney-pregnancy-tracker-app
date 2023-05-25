
import 'package:frontend/domain/auth/user.dart';

abstract class UsersRepositoryInterface {
  Future<List<UserDomain>?> getUsers();
  Future<UserDomain?> setUserRole(UserDomain user);
}
