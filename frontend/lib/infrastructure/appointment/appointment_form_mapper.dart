import 'package:frontend/domain/appointment/appointment_form.dart';
import 'package:frontend/infrastructure/appointment/appointment_dto.dart';
import 'package:frontend/infrastructure/appointment/appointment_form_dto.dart';

extension AFMapper on AppointmentForm {
  AppointmentFormDto toDto() {
    return AppointmentFormDto(
      title: title,
      body: body,
      date: date,
      time: time,
    );
  }
}

extension AFMapper2 on AppointmentFormDto {
  AppointmentDto toAuthoredDto(author) {
    return AppointmentDto(
      author: author,
      title: title,
      body: body,
      date: date,
      time: time,
    );
  }
}
