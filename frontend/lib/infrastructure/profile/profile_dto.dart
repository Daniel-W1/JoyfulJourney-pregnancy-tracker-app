import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_dto.freezed.dart';
part 'profile_dto.g.dart';

@freezed
class ProfileDto with _$ProfileDto {
  const ProfileDto._();

  const factory ProfileDto({
    required String userName,
    required String firstName,
    required String lastName,
    required String profilePictureUrl,
    required String bio,
    required List<String> followers,
    required List<String> following,
    required List<String> posts,
    required List<String> comments,
    required List<String> socialmedias,
  }) = _ProfileDto;

  factory ProfileDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileDtoFromJson(json);
}