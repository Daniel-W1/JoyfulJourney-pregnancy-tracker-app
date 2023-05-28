import 'package:frontend/domain/appointment/appointment.dart';

class AppointmentState {
  const AppointmentState._();

  const factory AppointmentState.initial() = AppointmentStateInitial;
  const factory AppointmentState.loading() = AppointmentStateLoading;
  const factory AppointmentState.successMultiple(List<AppointmentDomain> appointments) =
      AppointmentStateSuccessMultiple;
  const factory AppointmentState.Failure(AppointmentFailure Failure) = AppointmentStateFailure;
  const factory AppointmentState.success(AppointmentDomain appointment) = AppointmentStateSuccess;
  const factory AppointmentState.deleted() = AppointmentStateDeleted;
}

class AppointmentStateInitial extends AppointmentState {
  const AppointmentStateInitial() : super._();
}

class AppointmentStateLoading extends AppointmentState {
  const AppointmentStateLoading() : super._();
}

class AppointmentStateSuccessMultiple extends AppointmentState {
  final List<AppointmentDomain> appointments;

  const AppointmentStateSuccessMultiple(this.appointments) : super._();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppointmentStateSuccessMultiple &&
          runtimeType == other.runtimeType &&
          appointments == other.appointments;

  @override
  int get hashCode => runtimeType.hashCode ^ appointments.hashCode;
}

class AppointmentStateFailure extends AppointmentState {
  final AppointmentFailure Failure;

  const AppointmentStateFailure(this.Failure) : super._();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppointmentStateFailure &&
          runtimeType == other.runtimeType &&
          Failure == other.Failure;

  @override
  int get hashCode => runtimeType.hashCode ^ Failure.hashCode;
}

class AppointmentStateSuccess extends AppointmentState {
  final AppointmentDomain appointment;

  const AppointmentStateSuccess(this.appointment) : super._();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppointmentStateSuccess &&
          runtimeType == other.runtimeType &&
          appointment == other.appointment;

  @override
  int get hashCode => runtimeType.hashCode ^ appointment.hashCode;
}

class AppointmentStateDeleted extends AppointmentState {
  const AppointmentStateDeleted() : super._();
}