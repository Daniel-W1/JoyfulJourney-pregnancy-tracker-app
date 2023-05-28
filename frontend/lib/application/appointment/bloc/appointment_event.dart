import 'package:frontend/domain/appointment/appointment.dart';

class AppointmentEvent {
  const AppointmentEvent._();

  const factory AppointmentEvent.add(AppointmentForm appointmentForm) = AppointmentEventAdd;
  const factory AppointmentEvent.update(AppointmentForm appointmentForm, String appointmentId) =
      AppointmentEventUpdate;
  const factory AppointmentEvent.delete(String appointmentId) = AppointmentEventDelete;
  const factory AppointmentEvent.getByUser(String userId) = AppointmentEventGetByUser;
}

class AppointmentEventAdd extends AppointmentEvent {
  final AppointmentForm appointmentForm;

  const AppointmentEventAdd(this.appointmentForm) : super._();
}

class AppointmentEventUpdate extends AppointmentEvent {
  final AppointmentForm appointmentForm;
  final String appointmentId;

  const AppointmentEventUpdate(this.appointmentForm, this.appointmentId) : super._();
}

class AppointmentEventDelete extends AppointmentEvent {
  final String appointmentId;

  const AppointmentEventDelete(this.appointmentId) : super._();
}

class AppointmentEventGetByUser extends AppointmentEvent {
  final String userId;

  const AppointmentEventGetByUser(this.userId) : super._();
}