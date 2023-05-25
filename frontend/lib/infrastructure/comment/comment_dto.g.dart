// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentDto _$$_CommentDtoFromJson(Map<String, dynamic> json) =>
    _$_CommentDto(
      id: json['id'] as String,
      body: json['body'] as String,
      post_id: json['post_id'] as String,
      author: json['author'] as String,
    );

Map<String, dynamic> _$$_CommentDtoToJson(_$_CommentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'body': instance.body,
      'post_id': instance.post_id,
      'author': instance.author,
    };
