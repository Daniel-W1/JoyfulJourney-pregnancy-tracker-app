
import 'package:frontend/domain/appointment/appointment_form.dart';
import 'package:frontend/infrastructure/appointment/appointment_form_dto.dart';

extension AFMapper on AppointmentForm {
  AppointmentFormDto toDto() {
    return AppointmentFormDto(
      title: title,
      description: description,
      date: date,
      time: time,
    );
  }
}