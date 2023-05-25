// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppointmentEntity _$$_AppointmentEntityFromJson(Map<String, dynamic> json) =>
    _$_AppointmentEntity(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      date: json['date'] as String,
      time: json['time'] as String,
      user_id: json['user_id'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$_AppointmentEntityToJson(
        _$_AppointmentEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'date': instance.date,
      'time': instance.time,
      'user_id': instance.user_id,
      'status': instance.status,
    };
