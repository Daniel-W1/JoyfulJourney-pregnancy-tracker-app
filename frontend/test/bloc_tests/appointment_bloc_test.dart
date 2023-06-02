// import 'package:bloc_test/bloc_test.dart';
// import 'package:dartz/dartz.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:frontend/application/appointment/bloc/appointment_bloc.dart';
// import 'package:frontend/application/appointment/bloc/appointment_event.dart';
// import 'package:frontend/application/appointment/bloc/appointment_state.dart';
// import 'package:frontend/domain/appointment/appointment.dart';
// import 'package:frontend/domain/appointment/appointment_failure.dart';
// import 'package:frontend/domain/appointment/appointment_repository_interface.dart';
// import 'package:mockito/mockito.dart';

// class MockAppointmentRepository extends Mock implements AppointmentRepositoryInterface {}

// void main() {
//   group('AppointmentBloc', () {
//     late AppointmentRepositoryInterface appointmentRepository;
//     late AppointmentBloc appointmentBloc;

//     setUp(() {
//       appointmentRepository = MockAppointmentRepository();
//       appointmentBloc = AppointmentBloc(appointmentRepositoryInterface: appointmentRepository);
//     });

//     tearDown(() {
//       appointmentBloc.close();
//     });

//     test('initial state should be AppointmentStateInitial', () {
//       expect(appointmentBloc.state, equals(const AppointmentStateInitial()));
//     });

//     group('AppointmentEventAdd', () {
//       final appointmentForm = AppointmentForm(
//         title: 'Test Appointment',
//         body: 'Test Body',
//         date: '2023-06-02',
//         time: '10:00 AM',
//       );

//       final appointmentDomain = AppointmentDomain(
//         id: '1',
//         title: 'Test Appointment',
//         body: 'Test Body',
//         date: '2023-06-02',
//         time: '10:00 AM',
//         author: 'User',
//       );

//       blocTest<AppointmentBloc, AppointmentState>(
//         'emits [AppointmentStateLoading, AppointmentStateSuccess] when addAppointment succeeds',
//         build: () => appointmentBloc,
//         act: (bloc) {
//           when(appointmentRepository.addAppointment(appointmentForm)).thenAnswer((_) async => Right(appointmentDomain));
//           bloc.add(AppointmentEventAdd(appointmentForm));
//         },
//         expect: () => [
//           const AppointmentStateLoading(),
//           AppointmentStateSuccess(appointmentDomain),
//         ],
//       );

//       blocTest<AppointmentBloc, AppointmentState>(
//         'emits [AppointmentStateLoading, AppointmentStateFailure] when addAppointment fails',
//         build: () => appointmentBloc,
//         act: (bloc) {
//           when(appointmentRepository.addAppointment(appointmentForm)).thenAnswer((_) async => Left(AppointmentFailure.serverError()));
//           bloc.add(AppointmentEventAdd(appointmentForm));
//         },
//         expect: () => [
//           const AppointmentStateLoading(),
//           AppointmentStateFailure(AppointmentFailure.serverError()),
//         ],
//       );
//     });

//     // Add more blocTest for other events (e.g., AppointmentEventUpdate, AppointmentEventDelete, etc.)
//   });
// }
