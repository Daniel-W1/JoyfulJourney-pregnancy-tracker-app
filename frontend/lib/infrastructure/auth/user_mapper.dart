import 'package:frontend/domain/auth/user_domain.dart';
import 'package:frontend/infrastructure/auth/user_dto.dart';

extension UMapper on UserDto {
  UserDomain toUserDomain() {
    return UserDomain(
      id: id,
      userName: userName,
      password: password,
      email: email,
      profileId: profileId,
      roles: roles,
    );
  }
}

extension UDomain on UserDomain {
  UserDto toDto() {
    return UserDto(
      id: id,
      userName: userName,
      password: password,
      email: email,
      profileId: profileId,
      roles: roles,
    );
  }
}
