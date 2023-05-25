import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_form_dto.freezed.dart';
part 'user_form_dto.g.dart';

@freezed
class UserFormDto with _$UserFormDto {

  const factory UserFormDto({
    required String username,
    required String password,
    required String email,
  }) = _UserFormDto;

  factory UserFormDto.fromJson(Map<String, dynamic> json) =>
      _$UserFormDtoFromJson(json);
}