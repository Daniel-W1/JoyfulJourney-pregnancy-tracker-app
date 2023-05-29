import 'package:frontend/domain/auth/user_domain.dart';
import 'package:frontend/infrastructure/auth/user_dto.dart';

extension UMapper on UserDto {
  UserDomain toUserDomain() {
    return UserDomain(
      id: id,
      username: username,
      password: password,
      email: email,
      roles: roles,
    );
  }
}
