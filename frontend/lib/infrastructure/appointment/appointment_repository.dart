import 'package:dartz/dartz.dart';
import 'package:frontend/domain/appointment/appointment_domain.dart';
import 'package:frontend/domain/appointment/appointment_failure.dart';
import 'package:frontend/domain/appointment/appointment_form.dart';
import 'package:frontend/infrastructure/appointment/appointment_form_mapper.dart';
import 'package:frontend/domain/appointment/appointment_repository_interface.dart';
import 'package:frontend/infrastructure/appointment/appointment_api.dart';
import 'package:frontend/infrastructure/appointment/appointment_dto.dart';

class AppointmentRepository implements AppointmentRepositoryInterface {
  final AppointmentAPI appointmentAPI;

  AppointmentRepository(this.appointmentAPI);

  @override
  Future<Either<Appointmentfailure, List<AppointmentDomain>>>
      getAppointmentsForUser(String userId) async {
    try {
      var appointment = await appointmentAPI.getAppointmentsByUser(userId);
      return right(appointment
          .map((AppointmentDto appointmentDto) =>
              AppointmentDomain.fromJson(appointmentDto.toJson()))
          .toList());
    }
    // TODO: handle more errors
    // TODO: Make sure user is authenticated
    catch (e) {
      return left(const Appointmentfailure.serverError());
    }
  }

  @override
  Future<Either<Appointmentfailure, AppointmentDomain>> addAppointment(
      AppointmentForm appointmentForm) async {
    try {
      var appointment =
          await appointmentAPI.createAppointment(appointmentForm.toDto());
      return right(AppointmentDomain.fromJson(appointment.toJson()));
    } catch (e) {
      return left(const Appointmentfailure.serverError());
    }
  }

  @override
  Future<Either<Appointmentfailure, AppointmentDomain>> updateAppointment(
      AppointmentForm appointmentForm, String appointmentId) async {
    try {
      var AppointmentDomainDto = await appointmentAPI.updateAppointment(
          appointmentForm.toDto(), appointmentId);
      return right(AppointmentDomain.fromJson(AppointmentDomainDto.toJson()));
    } catch (e) {
      return left(const Appointmentfailure.serverError());
    }
  }

  @override
  Future<Either<Appointmentfailure, Unit>> deleteAppointment(
      String appointmentId) async {
    try {
      await appointmentAPI.deleteAppointment(appointmentId);
      return right(unit);
    } catch (e) {
      return left(Appointmentfailure.serverError());
    }
  }
}
