
import 'package:frontend/domain/appointment/appointment_domain.dart';
import 'package:frontend/domain/appointment/local/appointment_entity.dart';
import 'package:frontend/infrastructure/appointment/appointment_dto.dart';

extension on AppointmentDto {
  AppointmentDto fromAppointment(AppointmentEntity appointment) {
    return AppointmentDto(
      id: appointment.id,
      title: appointment.title,
      description: appointment.description,
      date: appointment.date,
      time: appointment.time,
      user_id: appointment.user_id,
    );
  }

  AppointmentEntity toAppointmentEntity() {
    return AppointmentEntity(
      id: id,
      title: title,
      description: description,
      date: date,
      time: time,
      user_id: user_id,
    );
  }

  AppointmentDomain fromDto(AppointmentDto appointment) {
    return AppointmentDomain(
      id: appointment.id,
      title: appointment.title,
      description: appointment.description,
      date: appointment.date,
      time: appointment.time,
      user_id: appointment.user_id,
    );
  }
}
