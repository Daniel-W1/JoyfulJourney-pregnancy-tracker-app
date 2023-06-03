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
      var appointments = await databaseHelper.getAppointmentsByUser(userId);

      if (appointments.isEmpty) {
        List<AppointmentDto> appointmentDto =
            await appointmentAPI.getAppointmentsByUser(userId);
        await databaseHelper.addAppointments(appointmentDto);
        appointments = await databaseHelper.getAppointmentsByUser(userId);
      }

      return Right(appointments);
    } on ServerError catch (e) {
      return Left(AppointmentFailure.serverError());
    } on NetworkError catch (e) {
      return Left(AppointmentFailure.networkError());
    } on Unauthorized catch (e) {
      return Left(AppointmentFailure.unauthorized());
    } on NotFound catch (e) {
      return Left(AppointmentFailure.notFound());
    } on PermissionDenied catch (e) {
      return Left(AppointmentFailure.permissionDenied());
    } on Forbidden catch (e) {
      return Left(AppointmentFailure.forbidden());
    } on ValidationError catch (e) {
      return Left(AppointmentFailure.validationError(e.message));
    } catch (e) {
      return Left(AppointmentFailure.customError(e.toString()));
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
    } on ServerError catch (e) {
      return Left(AppointmentFailure.serverError());
    } on NetworkError catch (e) {
      return Left(AppointmentFailure.networkError());
    } on Unauthorized catch (e) {
      return Left(AppointmentFailure.unauthorized());
    } on NotFound catch (e) {
      return Left(AppointmentFailure.notFound());
    } on PermissionDenied catch (e) {
      return Left(AppointmentFailure.permissionDenied());
    } on Forbidden catch (e) {
      return Left(AppointmentFailure.forbidden());
    } on ValidationError catch (e) {
      return Left(AppointmentFailure.validationError(e.message));
    } catch (e) {
      return Left(AppointmentFailure.customError(e.toString()));
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
    } on ServerError catch (e) {
      return Left(AppointmentFailure.serverError());
    } on NetworkError catch (e) {
      return Left(AppointmentFailure.networkError());
    } on Unauthorized catch (e) {
      return Left(AppointmentFailure.unauthorized());
    } on NotFound catch (e) {
      return Left(AppointmentFailure.notFound());
    } on PermissionDenied catch (e) {
      return Left(AppointmentFailure.permissionDenied());
    } on Forbidden catch (e) {
      return Left(AppointmentFailure.forbidden());
    } on ValidationError catch (e) {
      return Left(AppointmentFailure.validationError(e.message));
    } catch (e) {
      return Left(AppointmentFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<AppointmentFailure, Unit>> deleteAppointment(
      String appointmentId) async {
    try {
      await databaseHelper.removeAppointment(appointmentId);
      await appointmentAPI.deleteAppointment(appointmentId);
      return right(unit);
    } on ServerError catch (e) {
      return Left(AppointmentFailure.serverError());
    } on NetworkError catch (e) {
      return Left(AppointmentFailure.networkError());
    } on Unauthorized catch (e) {
      return Left(AppointmentFailure.unauthorized());
    } on NotFound catch (e) {
      return Left(AppointmentFailure.notFound());
    } on PermissionDenied catch (e) {
      return Left(AppointmentFailure.permissionDenied());
    } on Forbidden catch (e) {
      return Left(AppointmentFailure.forbidden());
    } on ValidationError catch (e) {
      return Left(AppointmentFailure.validationError(e.message));
    } catch (e) {
      return Left(AppointmentFailure.customError(e.toString()));
    }
  }
}
