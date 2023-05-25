// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileEntity _$$_ProfileEntityFromJson(Map<String, dynamic> json) =>
    _$_ProfileEntity(
      userName: json['userName'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      bio: json['bio'] as String,
      image: json['image'] as String,
      followers:
          (json['followers'] as List<dynamic>).map((e) => e as String).toList(),
      following:
          (json['following'] as List<dynamic>).map((e) => e as String).toList(),
      comments:
          (json['comments'] as List<dynamic>).map((e) => e as String).toList(),
      posts: (json['posts'] as List<dynamic>).map((e) => e as String).toList(),
      socialmedia: (json['socialmedia'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_ProfileEntityToJson(_$_ProfileEntity instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'bio': instance.bio,
      'image': instance.image,
      'followers': instance.followers,
      'following': instance.following,
      'comments': instance.comments,
      'posts': instance.posts,
      'socialmedia': instance.socialmedia,
    };
