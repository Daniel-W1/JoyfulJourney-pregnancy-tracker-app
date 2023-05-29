import 'package:dartz/dartz.dart';
import 'package:frontend/domain/appointment/appointment_domain.dart';
import 'package:frontend/domain/appointment/appointment_form.dart';

import 'appointment_failure.dart';

abstract class AppointmentRepositoryInterface {
  Future<Either<AppointmentFailure, AppointmentDomain>> addAppointment(AppointmentForm appointment);
  Future<Either<AppointmentFailure, AppointmentDomain>> updateAppointment(AppointmentForm appointmentForm,  String appointmentId);
  Future<Either<AppointmentFailure, Unit>> deleteAppointment(String appointmentId);
  Future<Either<AppointmentFailure, List<AppointmentDomain>>>
      getAppointmentsForUser(String userId);
}
