import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment_dto.freezed.dart';
part 'appointment_dto.g.dart';

@freezed
class AppointmentDto with _$AppointmentDto {
  const AppointmentDto._();

  const factory AppointmentDto({
    required String id,
    required String title,
    required String description,
    required String date,
    required String time,
    required String user_id,
    required String status,
  }) = _AppointmentDto;

  factory AppointmentDto.fromJson(Map<String, dynamic> json) =>
      _$AppointmentDtoFromJson(json);
}