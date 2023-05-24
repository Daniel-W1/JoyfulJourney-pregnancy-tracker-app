// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NoteDto _$$_NoteDtoFromJson(Map<String, dynamic> json) => _$_NoteDto(
      body: json['body'] as String?,
      title: json['title'] as String?,
      user_id: json['user_id'] as String?,
    );

Map<String, dynamic> _$$_NoteDtoToJson(_$_NoteDto instance) =>
    <String, dynamic>{
      'body': instance.body,
      'title': instance.title,
      'user_id': instance.user_id,
    };
