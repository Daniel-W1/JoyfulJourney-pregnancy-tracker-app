// import 'package:flutter_test/flutter_test.dart';
// import 'package:frontend/infrastructure/appointment/appointment_repository.dart';
// import 'package:mockito/annotations.dart';
// import 'package:mockito/mockito.dart';
// import 'package:dartz/dartz.dart';
// import 'package:frontend/domain/appointment/appointment.dart';
// import 'package:frontend/application/appointment/bloc/appointment_bloc.dart';
// import 'package:frontend/application/appointment/bloc/appointment_event.dart';
// import 'package:frontend/application/appointment/bloc/appointment_state.dart';

// import 'appointment_bloc_test.mocks.dart';

// class MockAppointmentRepository extends Mock implements AppointmentRepositoryInterface {}


// @GenerateMocks([
//   AppointmentRepository,
//   User,
//   Appointment,
//   AppointmentForm,
//   TagRepository,
//   AppointmentRepositoryInterface])
// void main() {
//   late AppointmentRepositoryInterface mockAppointmentRepository;
//   late AppointmentBloc appointmentBloc;
//   late MockAuthRepositoryInterface mockAuthRepository;
//   late MockAppointment mockAppointment;
//   late MockTagRepository mockTagRepository;

//   setUp(() {
//     mockAppointmentRepository = MockAppointmentRepository();
//     mockAuthRepository = MockAuthRepositoryInterface();
//     appointmentBloc = AppointmentBloc(appointmentRepositoryInterface: mockAppointmentRepository);
//     when(mockAuthRepository.getAuthenticatedUser()).thenAnswer((_) async =>
//         (User(
//             id: 1,
//             userName: 'userName',
//             firstName: 'firstName',
//             lastName: 'lastName',
//             profilePicture: 'profilePicture',
//             role: Role.member)));
//     mockAppointment = MockAppointment();
//     mockTagRepository = MockTagRepository();
//   });

//   group('AppointmentListsBloc', () {
//     test('initial state should be AppointmentStateInitial', () {
//       expect(appointmentBloc.state, const AppointmentStateInitial());
//     });

//     test('emits AppointmentStateLoading and AppointmentStateSuccess when AppointmentEventAdd is added and successful', () async {
//       // final appointmentForm = AppointmentForm();
//       final mockQuestions = List.generate(3, (index) => mockAppointment);

//       when(mockAppointmentRepository.getMyAppointments())
//           .thenAnswer((_) async => Either(val: mockAppointment));

//       final questionsListBloc =
//           AppointmentListBloc(appointmentRepository: mockAppointmentRepository);

//       appointmentListBloc.add(const AppointmentListEventLoad());

//       final expected = [
//         const AppointmentListStateLoading(),
//         AppointmentListStateSuccess(mockAppointment),
//       ];
      

//       expectLater(appointmentBloc.stream, emitsInOrder(expected));

//     });

//     test('emits AppointmentStateLoading and AppointmentStateFailure when AppointmentEventAdd is added and fails', () {
//       // final appointmentForm = AppointmentForm();

//       when(mockAppointmentRepository.addAppointment())
//           .thenAnswer((_) async => Either(error: Error('error')));

//       final questionsListBloc =
//           AppointmentListBloc(appointmentRepository: mockAppointmentRepository);

//       appointmentListBloc.add(const AppointmentListEventLoad());
      
//       final expected = [
//         const AppointmentListStateLoading(),
//         AppointmentListStateSuccess(mockAppointment),
//       ];
      

//       expectLater(appointmentListBloc.stream, emitsInOrder(expected));
//       // expectLater(appointmentBloc.stream, emitsInOrder(expectedStates));

//       // appointmentBloc.add(AppointmentEvent.add(appointmentForm));
//     });

//     // Additional tests for other events and scenarios can be added here
//   });
// }
