import '../../domain/appointment/appointment_domain.dart';
import 'appointment_dto.dart';

extension AppointmentMapper on AppointmentDto {
  AppointmentDomain toAppointment() {
    return AppointmentDomain(
      title: title,
      description: description,
      date: date,
      time: time,
      user_id: user_id,
      status: status,
    );
  }
}