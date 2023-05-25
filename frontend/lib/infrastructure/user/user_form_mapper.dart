import 'package:frontend/domain/user/user_form.dart';
import 'package:frontend/infrastructure/user/user_form_dto.dart';

extension UFMapper on UserForm {
  UserFormDto toDto() {
    return UserFormDto(
      username: username,
      password: password,
      email: email,
    );
  }
}