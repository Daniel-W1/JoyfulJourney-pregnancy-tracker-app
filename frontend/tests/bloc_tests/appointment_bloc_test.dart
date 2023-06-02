import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/application/appointment/bloc/appointment_bloc.dart';
import 'package:frontend/application/appointment/bloc/appointment_event.dart';
import 'package:frontend/application/appointment/bloc/appointment_state.dart';
import 'package:frontend/domain/appointment/appointment.dart';
import 'package:frontend/domain/appointment/appointment_failure.dart';
import 'package:frontend/infrastructure/appointment/appointment_repository.dart';
import 'package:frontend/presentation/appointments/components/add_appointment_app_bar.dart';
// import 'package:frontend/presentation/appointments/components/add_appointment_body.dart';
import 'package:frontend/presentation/appointments/components/appointment_item.dart';
import 'package:frontend/presentation/appointments/components/appointments_body.dart';
import 'package:frontend/presentation/appointments/components/book_textfield_button.dart';
import 'package:frontend/presentation/appointments/components/date_month_year_picker.dart';
import 'package:frontend/presentation/appointments/components/edit_appointment_dialog.dart';
import 'package:frontend/presentation/appointments/components/time_label.dart';
import 'package:frontend/presentation/appointments/components/time_picker.dart';
import 'package:mockito/mockito.dart';

class MockAppointmentRepository extends Mock implements AppointmentRepository {
  // ...

  @override
  Future<Either<AppointmentFailure, AppointmentDomain>> addAppointment(AppointmentForm form) async {
    // Implement the method to return the expected result
    // For example:
    try {
      // Perform the necessary logic to add the appointment
      // Return the created appointment on success
      final appointment = AppointmentDomain(author: '', body: '', date: '', time: '', title: ''); // Provide the expected appointment data
      return Right(appointment);
    } catch (e) {
      // Return the failure on error
      return Left(AppointmentFailure.serverError());
    }
  }

  // ...
}


void main() {
  group('AppointmentBloc', () {
    late AppointmentBloc appointmentBloc;
    late MockAppointmentRepository mockAppointmentRepository;

    setUp(() {
      mockAppointmentRepository = MockAppointmentRepository();
      appointmentBloc = AppointmentBloc(appointmentRepositoryInterface: mockAppointmentRepository);
    });

    tearDown(() {
      appointmentBloc.close();
    });

    test('initial state is AppointmentStateInitial', () {
      expect(appointmentBloc.state, equals(const AppointmentStateInitial()));
    });

    group('AppointmentEventAdd', () {
    final appointmentForm = AppointmentForm(body: '', date: '', time: '', title: ''); // Provide the necessary appointment form data

    test('emits [AppointmentStateLoading, AppointmentStateSuccess] when successful', () {
      final appointment = AppointmentDomain(author: '', body: '', date: '', time: '', title: ''); // Provide the expected appointment data

      when(mockAppointmentRepository.addAppointment(appointmentForm))
        .thenAnswer((_) async => Right(appointment));

      expectLater(
        appointmentBloc.stream,
        emitsInOrder([
          const AppointmentStateLoading(),
          AppointmentStateSuccess(appointment),
        ]),
      );

      appointmentBloc.add(AppointmentEventAdd(appointmentForm));
    });

    test('emits [AppointmentStateLoading, AppointmentStateFailure] when failure occurs', () {
      final failure = AppointmentFailure.serverError(); // Provide the expected failure reason

      when(mockAppointmentRepository.addAppointment(appointmentForm))
        .thenAnswer((_) async => Left(failure));

      expectLater(
        appointmentBloc.stream,
        emitsInOrder([
          const AppointmentStateLoading(),
          AppointmentStateFailure(failure),
        ]),
      );

      appointmentBloc.add(AppointmentEventAdd(appointmentForm));
    });
  });


    // Add tests for other appointment events (update, delete, getByUser) if needed

    // Add tests for widgets as required
  });
}