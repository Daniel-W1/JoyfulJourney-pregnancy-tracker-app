import 'package:dartz/dartz.dart';
import 'package:frontend/domain/appointment/appointment_domain.dart';
import 'package:frontend/domain/appointment/appointment_form.dart';

import 'appointment_failure.dart';

abstract class AppointmentRepositoryInterface {
  Future<Either<Appointmentfailure, AppointmentDomain>> addAppointment(AppointmentForm appointment);
  Future<Either<Appointmentfailure, AppointmentDomain>> updateAppointment(AppointmentForm appointment, String appointmentId);
  Future<Either<Appointmentfailure, Unit>> deleteAppointment(String appointmentId);
  Future<Either<Appointmentfailure, List<AppointmentDomain>>>
      getAppointmentsForUser(String userId);
}
