// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NoteEntity _$$_NoteEntityFromJson(Map<String, dynamic> json) =>
    _$_NoteEntity(
      id: json['id'] as String,
      body: json['body'] as String,
      title: json['title'] as String,
      user_id: json['user_id'] as String,
    );

Map<String, dynamic> _$$_NoteEntityToJson(_$_NoteEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'body': instance.body,
      'title': instance.title,
      'user_id': instance.user_id,
    };
