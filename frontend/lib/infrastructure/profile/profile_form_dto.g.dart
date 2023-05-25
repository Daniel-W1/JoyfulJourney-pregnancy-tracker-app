// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_form_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileFormDto _$$_ProfileFormDtoFromJson(Map<String, dynamic> json) =>
    _$_ProfileFormDto(
      userName: json['userName'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      profilePictureUrl: json['profilePictureUrl'] as String,
      bio: json['bio'] as String,
      followers:
          (json['followers'] as List<dynamic>).map((e) => e as String).toList(),
      following:
          (json['following'] as List<dynamic>).map((e) => e as String).toList(),
      posts: (json['posts'] as List<dynamic>).map((e) => e as String).toList(),
      comments:
          (json['comments'] as List<dynamic>).map((e) => e as String).toList(),
      socialmedias: (json['socialmedias'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_ProfileFormDtoToJson(_$_ProfileFormDto instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'profilePictureUrl': instance.profilePictureUrl,
      'bio': instance.bio,
      'followers': instance.followers,
      'following': instance.following,
      'posts': instance.posts,
      'comments': instance.comments,
      'socialmedias': instance.socialmedias,
    };
