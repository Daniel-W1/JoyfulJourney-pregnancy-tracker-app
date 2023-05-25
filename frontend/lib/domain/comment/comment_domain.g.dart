// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_domain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentDomain _$$_CommentDomainFromJson(Map<String, dynamic> json) =>
    _$_CommentDomain(
      id: json['id'] as String,
      body: json['body'] as String,
      post_id: json['post_id'] as String,
      author: json['author'] as String,
    );

Map<String, dynamic> _$$_CommentDomainToJson(_$_CommentDomain instance) =>
    <String, dynamic>{
      'id': instance.id,
      'body': instance.body,
      'post_id': instance.post_id,
      'author': instance.author,
    };
