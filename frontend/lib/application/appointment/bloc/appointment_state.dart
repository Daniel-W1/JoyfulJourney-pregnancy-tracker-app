import 'package:dartz/dartz.dart';
import 'package:frontend/domain/appointment/appointment.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment_state.freezed.dart';

@freezed
abstract class AppointmentState with _$AppointmentState {
  const factory AppointmentState.initial() = AppointmentStateInitial;
  const factory AppointmentState.loading() = AppointmentStateLoading;
  const factory AppointmentState.successMultiple(List<AppointmentDomain> appointments) = AppointmentStateSuccessMultiple;
  const factory AppointmentState.failure(Appointmentfailure failure) = AppointmentStateFailure;
  const factory AppointmentState.success(AppointmentDomain appointment) = AppointmentStateSuccess;
  const factory AppointmentState.deleted(Unit unit) = AppointmentStateDeleted;
}
