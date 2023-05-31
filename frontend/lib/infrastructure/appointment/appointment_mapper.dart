import 'package:frontend/domain/appointment/appointment_domain.dart';
import 'package:frontend/domain/appointment/local/appointment_entity.dart';
import 'package:frontend/infrastructure/appointment/appointment_dto.dart';

extension ADMapper on AppointmentDto {
  AppointmentDto fromAppointment(AppointmentEntity appointment) {
    return AppointmentDto(
      id: appointment.id,
      title: appointment.title,
      body: appointment.body,
      date: appointment.date,
      time: appointment.time,
      author: appointment.author,
    );
  }

  AppointmentEntity toAppointmentEntity() {
    return AppointmentEntity(
      id: id!,
      title: title,
      body: body,
      date: date,
      time: time,
      author: author,
    );
  }

  AppointmentDomain fromDto(AppointmentDto appointment) {
    return AppointmentDomain(
      id: appointment.id!,
      title: appointment.title,
      body: appointment.body,
      date: appointment.date,
      time: appointment.time,
      author: appointment.author,
    );
  }
}
