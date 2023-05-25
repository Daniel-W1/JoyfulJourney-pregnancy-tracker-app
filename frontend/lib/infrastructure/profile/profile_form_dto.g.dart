// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_form_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileFormDto _$$_ProfileFormDtoFromJson(Map<String, dynamic> json) =>
    _$_ProfileFormDto(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      image: json['image'] as String,
      bio: json['bio'] as String,
      followers:
          (json['followers'] as List<dynamic>).map((e) => e as String).toList(),
      following:
          (json['following'] as List<dynamic>).map((e) => e as String).toList(),
      socialmedias: (json['socialmedias'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_ProfileFormDtoToJson(_$_ProfileFormDto instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'image': instance.image,
      'bio': instance.bio,
      'followers': instance.followers,
      'following': instance.following,
      'socialmedias': instance.socialmedias,
    };
