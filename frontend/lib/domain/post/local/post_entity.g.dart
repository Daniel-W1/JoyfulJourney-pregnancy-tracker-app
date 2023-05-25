// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostEntity _$$_PostEntityFromJson(Map<String, dynamic> json) =>
    _$_PostEntity(
      body: json['body'] as String,
      author: json['author'] as String,
      comments:
          (json['comments'] as List<dynamic>).map((e) => e as String).toList(),
      likes: json['likes'] as int,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_PostEntityToJson(_$_PostEntity instance) =>
    <String, dynamic>{
      'body': instance.body,
      'author': instance.author,
      'comments': instance.comments,
      'likes': instance.likes,
      'id': instance.id,
    };
