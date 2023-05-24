import 'dart:io';
import 'dart:developer' as developer;

class AppointmentRepository implements AppointmentRepositoryInterface {
  final AppointmentApi appointmentApi;

  AppointmentRepository(this.appointmentApi);

  @override
  Future<Either<Appointment>> updateAppointment(
      {required EditAppointmentForm appointmentForm}) async {
    try {
      AppointmentDto appointmentDto = await appointmentApi.updateAppointment(
          appointmentForm: appointmentForm);
      return Either(val: appointmentDto.toAppointment());
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log(
          "Unexpected error while updating appointment in Appointment Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  @override
  Future<Either<Appointment>> getAppointment() async {
    try {
      AppointmentDto appointmentDto = await appointmentApi.getAppointment();
      return Either(val: appointmentDto.toAppointment());
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log(
          "Unexpected error while getting appointment in Appointment Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  @override
  Future<Either<void>> deleteAppointment() async {
    try {
      await appointmentApi.deleteAppointment();
      return Either();
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log(
          "Unexpected error while deleting appointment in Appointment Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }
}
