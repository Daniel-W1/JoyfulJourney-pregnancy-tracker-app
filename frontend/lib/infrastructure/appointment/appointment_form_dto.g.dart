// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_form_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppointmentFormDto _$$_AppointmentFormDtoFromJson(
        Map<String, dynamic> json) =>
    _$_AppointmentFormDto(
      title: json['title'] as String,
      description: json['description'] as String,
      date: json['date'] as String,
      time: json['time'] as String,
    );

Map<String, dynamic> _$$_AppointmentFormDtoToJson(
        _$_AppointmentFormDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'date': instance.date,
      'time': instance.time,
    };
