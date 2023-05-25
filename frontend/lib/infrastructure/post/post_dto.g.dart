// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostDto _$$_PostDtoFromJson(Map<String, dynamic> json) => _$_PostDto(
      id: json['id'] as String,
      body: json['body'] as String,
      author: json['author'] as String,
      comments:
          (json['comments'] as List<dynamic>).map((e) => e as String).toList(),
      likes: json['likes'] as int,
    );

Map<String, dynamic> _$$_PostDtoToJson(_$_PostDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'body': instance.body,
      'author': instance.author,
      'comments': instance.comments,
      'likes': instance.likes,
    };
