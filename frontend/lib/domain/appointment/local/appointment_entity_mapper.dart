// ignore_for_file: unused_element

import 'package:frontend/domain/appointment/appointment_domain.dart';
import 'package:frontend/domain/appointment/local/appointment_entity.dart';
import 'package:frontend/infrastructure/appointment/appointment_dto.dart';

extension on AppointmentEntity {
  AppointmentDomain toAppointmentdomain() {
    return AppointmentDomain(
      id: id,
      title: title,
      description: description,
      date:date,
      time:time,
      user_id:user_id,
    );
  }

  AppointmentEntity fromAppointment(AppointmentDomain appointment) {
    return AppointmentEntity(
      id: appointment.id,
      title: appointment.title,
      description: appointment.description,
      date:appointment.date,
      time:appointment.time,
      user_id:appointment.user_id,
    );
  }

  AppointmentDto toAppointmentDto() {
    return AppointmentDto(
      id: id,
      title: title,
      description: description,
      date:date,
      time:time,
      user_id:user_id,
    );
  }

  AppointmentEntity fromAppointmentDto(AppointmentDto appointmentdto) {
    return AppointmentEntity(
      id: appointmentdto.id,
      title: appointmentdto.title,
      description: appointmentdto.description,
      time: appointmentdto.time,
      user_id: appointmentdto.user_id,
      date: appointmentdto.date,
    );
  }
}