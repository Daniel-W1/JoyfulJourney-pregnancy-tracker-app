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

      Either<AppointmentFailure, AppointmentDomain> result =
          await appointmentRepositoryInterface.addAppointment(event.appointmentForm);

          result.fold(
            (l) => emit(AppointmentStateFailure(l)),
            (r) => emit(AppointmentStateSuccess(r))
          );
    });

    on<AppointmentEventUpdate>((event, emit) async {
      emit(const AppointmentStateLoading());

      Either<AppointmentFailure, AppointmentDomain> result =
          await appointmentRepositoryInterface.updateAppointment(event.appointmentForm, event.appointmentId);

          result.fold(
            (l) => emit(AppointmentStateFailure(l)),
            (r) => emit(AppointmentStateSuccess(r))
          );
    });

    on<AppointmentEventDelete>((event, emit) async {
      emit(const AppointmentStateLoading());

      Either<AppointmentFailure, Unit> result =
          await appointmentRepositoryInterface.deleteAppointment(event.appointmentId);

          result.fold(
            (l) => emit(AppointmentStateFailure(l)),
            (r) => emit(AppointmentStateDeleted())
          );
    });

    on<AppointmentEventGetByUser>((event, emit) async {
      emit(const AppointmentStateLoading());

      Either<AppointmentFailure, List<AppointmentDomain>> result =
          await appointmentRepositoryInterface.getAppointmentsForUser(event.userId);

          result.fold(
            (l) => emit(AppointmentStateFailure(l)),
            (r) => emit(AppointmentStateSuccessMultiple(r))
          );
    });

  }
}
