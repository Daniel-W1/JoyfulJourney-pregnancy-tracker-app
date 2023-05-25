// ignore_for_file: unused_element

import 'package:frontend/domain/appointment/appointment_domain.dart';
import 'package:frontend/domain/appointment/local/appointment_entity.dart';

extension on AppointmentEntity {
  AppointmentDomain toAppointmentdomain() {
    return AppointmentDomain(
      id: id,
      title: title,
      description: description,
      date:date,
      time:time,
      user_id:user_id,
      status: status, 
    );
  }

  AppointmentEntity fromAppointment(AppointmentDomain appointment) {
    return AppointmentEntity(
      id: AppointmentDomain.id,
      title: AppointmentDomain.title,
      description: AppointmentDomain.description,
      date:AppointmentDomain.date,
      time:AppointmentDomain.time,
      user_id:AppointmentDomain.user_id,
      status: AppointmentDomain.status, 
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
      status: status, 
    );
  }

  AppointmentEntity fromAppointmentDto(AppointmentDto appointmentdto) {
    return AppointmentEntity(
      id: appointmentdto.id,
      title: appointmentdto.title,
      description: appointmentdto.description,
      status: appointmentdto.status,
      time: appointmentdto.time,
      user_id: appointmentdto.user_id,
      date: appointmentdto.date,
    );
  }
}