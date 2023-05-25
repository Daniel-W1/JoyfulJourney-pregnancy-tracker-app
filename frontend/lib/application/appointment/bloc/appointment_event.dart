import 'package:frontend/domain/appointment/appointment.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment_event.freezed.dart';

@freezed
abstract class AppointmentEvent with _$AppointmentEvent {
  const factory AppointmentEvent.add(AppointmentForm appointmentForm) = AppointmentEventAdd;
  const factory AppointmentEvent.update(AppointmentForm appointmentForm, String appointmentId) = AppointmentEventUpdate;
  const factory AppointmentEvent.delete(String appointmentId) = AppointmentEventDelete;
  const factory AppointmentEvent.getByUser(String userId) = AppointmentEventGetByUser;
}