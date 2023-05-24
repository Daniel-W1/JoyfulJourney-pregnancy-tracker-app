// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_form_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NoteFormDto _$$_NoteFormDtoFromJson(Map<String, dynamic> json) =>
    _$_NoteFormDto(
      title: json['title'] as String,
      description: json['description'] as String,
      user_id: json['user_id'] as String,
    );

Map<String, dynamic> _$$_NoteFormDtoToJson(_$_NoteFormDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'user_id': instance.user_id,
    };
