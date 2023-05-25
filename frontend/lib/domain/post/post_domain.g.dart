// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_domain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostDomain _$$_PostDomainFromJson(Map<String, dynamic> json) =>
    _$_PostDomain(
      body: json['body'] as String,
      author: json['author'] as String,
      comments:
          (json['comments'] as List<dynamic>).map((e) => e as String).toList(),
      likes: (json['likes'] as List<dynamic>).map((e) => e as String).toList(),
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_PostDomainToJson(_$_PostDomain instance) =>
    <String, dynamic>{
      'body': instance.body,
      'author': instance.author,
      'comments': instance.comments,
      'likes': instance.likes,
      'id': instance.id,
    };
