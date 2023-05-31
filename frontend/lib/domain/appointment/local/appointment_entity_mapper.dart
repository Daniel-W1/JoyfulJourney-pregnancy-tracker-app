// ignore_for_file: unused_element

import 'package:frontend/domain/appointment/appointment_domain.dart';
import 'package:frontend/domain/appointment/local/appointment_entity.dart';
import 'package:frontend/infrastructure/appointment/appointment_dto.dart';

extension on AppointmentEntity {
  AppointmentDomain toAppointmentdomain() {
    return AppointmentDomain(
      id: id,
      title: title,
      body: body,
      date: date,
      time: time,
      author: author,
    );
  }

  AppointmentEntity fromAppointment(AppointmentDomain appointment) {
    return AppointmentEntity(
      id: appointment.id,
      title: appointment.title,
      body: appointment.body,
      date: appointment.date,
      time: appointment.time,
      author: appointment.author,
    );
  }

  AppointmentDto toAppointmentDto() {
    return AppointmentDto(
      id: id,
      title: title,
      body: body,
      date: date,
      time: time,
      author: author,
    );
  }

  AppointmentEntity fromAppointmentDto(AppointmentDto appointmentdto) {
    return AppointmentEntity(
      id: appointmentdto.id!,
      title: appointmentdto.title,
      body: appointmentdto.body,
      time: appointmentdto.time,
      author: appointmentdto.author,
      date: appointmentdto.date,
    );
  }
}
