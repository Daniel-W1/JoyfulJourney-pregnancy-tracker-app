// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_domain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppointmentDomain _$$_AppointmentDomainFromJson(Map<String, dynamic> json) =>
    _$_AppointmentDomain(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      date: json['date'] as String,
      time: json['time'] as String,
      user_id: json['user_id'] as String,
    );

Map<String, dynamic> _$$_AppointmentDomainToJson(
        _$_AppointmentDomain instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'date': instance.date,
      'time': instance.time,
      'user_id': instance.user_id,
    };
