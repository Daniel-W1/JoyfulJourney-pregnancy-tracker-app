import 'package:dartz/dartz.dart';
import 'package:frontend/domain/appointment/appointment_domain.dart';

import 'appointment_failure.dart';

abstract class AppointmentRepository {
  Future<void> addAppointment(AppointmentDomain appointment);
  Future<void> updateAppointment(AppointmentDomain appointment);
  Future<void> deleteAppointment(AppointmentDomain appointment);
  Future<Either<Appointmentfailure, List<AppointmentDomain>>>
      getAppointmentsForUser(String userId);
  Future<Either<Appointmentfailure, List<AppointmentDomain>>>
      getAppointmentById(String appointmentId);
}
