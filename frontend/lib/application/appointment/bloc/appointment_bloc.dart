import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:frontend/domain/appointment/appointment.dart';

import 'appointment_event.dart';
import 'appointment_state.dart';

class AppointmentBloc extends Bloc<AppointmentEvent, AppointmentState> {
  final AppointmentRepositoryInterface appointmentRepositoryInterface;

  AppointmentBloc({required this.appointmentRepositoryInterface})
      : super(const AppointmentStateInitial()) {

    on<AppointmentEventAdd>((event, emit) async {
      emit(const AppointmentStateLoading());

      Either<Appointmentfailure, AppointmentDomain> result =
          await appointmentRepositoryInterface.addAppointment(event.appointmentForm.copyWith());

          result.fold(
            (l) => emit(AppointmentStateFailure(l)),
            (r) => emit(AppointmentStateSuccess(r))
          );
    });

    on<AppointmentEventUpdate>((event, emit) async {
      emit(const AppointmentStateLoading());

      Either<Appointmentfailure, AppointmentDomain> result =
          await appointmentRepositoryInterface.updateAppointment(event.appointmentForm.copyWith(), event.appointmentId);

          result.fold(
            (l) => emit(AppointmentStateFailure(l)),
            (r) => emit(AppointmentStateSuccess(r))
          );
    });

    on<AppointmentEventDelete>((event, emit) async {
      emit(const AppointmentStateLoading());

      Either<Appointmentfailure, Unit> result =
          await appointmentRepositoryInterface.deleteAppointment(event.appointmentId);

          result.fold(
            (l) => emit(AppointmentStateFailure(l)),
            (r) => emit(AppointmentStateDeleted(r))
          );
    });

    on<AppointmentEventGetByUser>((event, emit) async {
      emit(const AppointmentStateLoading());

      Either<Appointmentfailure, List<AppointmentDomain>> result =
          await appointmentRepositoryInterface.getAppointmentsForUser(event.userId);

          result.fold(
            (l) => emit(AppointmentStateFailure(l)),
            (r) => emit(AppointmentStateSuccessMultiple(r))
          );
    });

  }
}