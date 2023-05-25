// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_form_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostFormDto _$$_PostFormDtoFromJson(Map<String, dynamic> json) =>
    _$_PostFormDto(
      body: json['body'] as String,
      comments:
          (json['comments'] as List<dynamic>).map((e) => e as String).toList(),
      likes: json['likes'] as int,
    );

Map<String, dynamic> _$$_PostFormDtoToJson(_$_PostFormDto instance) =>
    <String, dynamic>{
      'body': instance.body,
      'comments': instance.comments,
      'likes': instance.likes,
    };
