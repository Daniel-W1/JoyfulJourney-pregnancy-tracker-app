import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_form_dto.freezed.dart';
part 'profile_form_dto.g.dart';

@freezed
class ProfileFormDto with _$ProfileFormDto {
  const factory ProfileFormDto({
    required String firstName,
    required String lastName,
    required String image,
    required String bio,
    required List<String> followers,
    required List<String> following,
    required List<String> socialmedias,

  }) = _ProfileFormDto;

  factory ProfileFormDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileFormDtoFromJson(json);
}
