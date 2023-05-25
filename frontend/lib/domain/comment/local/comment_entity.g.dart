// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentEntity _$$_CommentEntityFromJson(Map<String, dynamic> json) =>
    _$_CommentEntity(
      id: json['id'] as String,
      body: json['body'] as String,
      post_id: json['post_id'] as String,
      author: json['author'] as String,
    );

Map<String, dynamic> _$$_CommentEntityToJson(_$_CommentEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'body': instance.body,
      'post_id': instance.post_id,
      'author': instance.author,
    };
