import 'package:frontend/domain/auth/role_domain.dart';
import 'package:frontend/domain/user/user.dart';

abstract class UsersRepositoryInterface {
  Future<List<User>?> getUsers();
  Future<User?> setUserRole(User user, Role role);
}
