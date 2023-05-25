import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment_form_dto.freezed.dart';
part 'appointment_form_dto.g.dart';

@freezed
class AppointmentFormDto with _$AppointmentFormDto {

  const factory AppointmentFormDto({
    required String title,
    required String description,
    required String date,
    required String time,
  }) = _AppointmentFormDto;

  factory AppointmentFormDto.fromJson(Map<String, dynamic> json) =>
      _$AppointmentFormDtoFromJson(json);
}