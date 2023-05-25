// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_domain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NoteDomain _$$_NoteDomainFromJson(Map<String, dynamic> json) =>
    _$_NoteDomain(
      id: json['id'] as String,
      body: json['body'] as String,
      title: json['title'] as String,
      user_id: json['user_id'] as String,
    );

Map<String, dynamic> _$$_NoteDomainToJson(_$_NoteDomain instance) =>
    <String, dynamic>{
      'id': instance.id,
      'body': instance.body,
      'title': instance.title,
      'user_id': instance.user_id,
    };
