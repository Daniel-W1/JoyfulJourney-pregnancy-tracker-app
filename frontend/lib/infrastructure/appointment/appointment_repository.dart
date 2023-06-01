import 'package:dartz/dartz.dart';
import 'package:frontend/domain/appointment/appointment_domain.dart';
import 'package:frontend/domain/appointment/appointment_failure.dart';
import 'package:frontend/domain/appointment/appointment_form.dart';
import 'package:frontend/infrastructure/appointment/appointment_form_mapper.dart';
import 'package:frontend/domain/appointment/appointment_repository_interface.dart';
import 'package:frontend/infrastructure/appointment/appointment_api.dart';
import 'package:frontend/infrastructure/appointment/appointment_dto.dart';
import 'package:frontend/infrastructure/appointment/appointment_mapper.dart';
import 'package:frontend/local_data/database/jj_database_helper.dart';
import 'package:frontend/util/jj_timeout_exception.dart';

class AppointmentRepository implements AppointmentRepositoryInterface {
  final AppointmentAPI appointmentAPI;
  final DatabaseHelper databaseHelper = DatabaseHelper.instance;

  AppointmentRepository(this.appointmentAPI);

  @override
  Future<Either<AppointmentFailure, List<AppointmentDomain>>>
      getAppointmentsForUser(String userId) async {
    try {
      List<AppointmentDto> appointments =
          await appointmentAPI.getAppointmentsByUser(userId);
      await databaseHelper.addAppointments(appointments);

      return Right(appointments
          .map((e) => AppointmentDomain.fromJson(e.toJson()))
          .toList());
    } on JJTimeoutException catch (timeout) {
      var appointments = await databaseHelper.getAppointmentsByUser(userId);
      if (appointments.isEmpty) {
        return left(AppointmentFailure.serverError());
      } else {
        return right(appointments);
      }
    } catch (e) {
      return left(AppointmentFailure.serverError());
    }
  }

  @override
  Future<Either<AppointmentFailure, AppointmentDomain>> addAppointment(
      AppointmentForm appointmentForm) async {
    try {
      var appointment =
          await appointmentAPI.createAppointment(appointmentForm.toDto());

      await databaseHelper.addAppointments([appointment]);

      return right(AppointmentDomain.fromJson(appointment.toJson()));
    } catch (e) {
      return left(AppointmentFailure.serverError());
    }
  }

  @override
  Future<Either<AppointmentFailure, AppointmentDomain>> updateAppointment(
      AppointmentForm appointmentForm, String appointmentId) async {
    try {
      print('app repo $appointmentForm');
      var AppointmentDomainDto = await appointmentAPI.updateAppointment(
          appointmentForm.toDto(), appointmentId);

      await databaseHelper
          .updateAppointment(AppointmentDomainDto.toAppointmentEntity());
      return right(AppointmentDomain.fromJson(AppointmentDomainDto.toJson()));
    } catch (e) {
      return left(AppointmentFailure.serverError());
    }
  }

  @override
  Future<Either<AppointmentFailure, Unit>> deleteAppointment(
      String appointmentId) async {
    try {
      await databaseHelper.removeAppointment(appointmentId);
      await appointmentAPI.deleteAppointment(appointmentId);
      return right(unit);
    } catch (e) {
      return left(AppointmentFailure.serverError());
    }
  }
}
