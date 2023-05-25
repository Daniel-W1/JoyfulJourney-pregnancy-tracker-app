import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment_entity.freezed.dart';
part 'appointment_entity.g.dart';

@freezed
class AppointmentEntity with _$AppointmentEntity {
  const factory AppointmentEntity({
    required String id,
    required String title,
    required String description,
    required String date,
    required String time,
    required String user_id,
  }) = _AppointmentEntity;

  factory AppointmentEntity.fromJson(Map<String, dynamic> json) =>
      _$AppointmentEntityFromJson(json);
}