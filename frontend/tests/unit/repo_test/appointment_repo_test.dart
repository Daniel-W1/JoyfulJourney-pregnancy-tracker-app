import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/domain/appointment/appointment_domain.dart';
import 'package:frontend/domain/appointment/appointment_failure.dart';
import 'package:frontend/domain/appointment/appointment_form.dart';
import 'package:frontend/infrastructure/appointment/appointment_api.dart';
import 'package:frontend/infrastructure/appointment/appointment_dto.dart';
import 'package:frontend/infrastructure/appointment/appointment_form_mapper.dart';
import 'package:frontend/infrastructure/appointment/appointment_mapper.dart';
import 'package:frontend/infrastructure/appointment/appointment_repository.dart';
import 'package:frontend/local_data/database/jj_database_helper.dart';
import 'package:frontend/domain/appointment/appointment_repository_interface.dart';
import 'package:frontend/util/jj_timeout_exception.dart';
import 'package:mockito/mockito.dart';

// Mock AppointmentAPI
class MockAppointmentAPI extends Mock implements AppointmentAPI {
  // ...

  @override
  Future<List<AppointmentDto>> getAppointmentsByUser(String userId) async {
    // Simulate API behavior and return a list of AppointmentDto
    List<AppointmentDto> appointments = [AppointmentDto(id: '1', title: 'Appointment 1', author: 'Haile', body: 'body 1', date: '2023-06-02', time: '10:00 AM'), AppointmentDto(id: '1', title: 'Appointment 1', author: 'Haile', body: 'body 1', date: '2023-06-02', time: '10:00 AM') ];
    return appointments;
  }

  // ...
}

// Mock DatabaseHelper
class MockDatabaseHelper extends Mock implements DatabaseHelper {}

void main() {
  group('AppointmentRepository', () {
    late AppointmentRepository repository;
    late MockAppointmentAPI mockAppointmentAPI;
    late MockDatabaseHelper mockDatabaseHelper;

    setUp(() {
      mockAppointmentAPI = MockAppointmentAPI();
      mockDatabaseHelper = MockDatabaseHelper();
      repository = AppointmentRepository(mockAppointmentAPI);
      // repository.databaseHelper = mockDatabaseHelper;
    });

    group('getAppointmentsForUser', () {
      test('should return Right with a list of AppointmentDomain on success', () async {
        // Arrange
        final userId = '123';
        final appointmentDto = AppointmentDto(id: '1', title: 'Appointment 1', author: 'Haile', body: 'body 1', date: '2023-06-02', time: '10:00 AM');
        final expectedDomain = AppointmentDomain.fromJson(appointmentDto.toJson());
        final appointmentDtoList = [appointmentDto];
        final expectedResult = Right([expectedDomain]);

        when(mockAppointmentAPI.getAppointmentsByUser(userId)).thenAnswer((_) async => appointmentDtoList);
        when(mockDatabaseHelper.addAppointments(appointmentDtoList)).thenAnswer((_) async {});
        
        // Act
        final result = await repository.getAppointmentsForUser(userId);

        // Assert
        expect(result, expectedResult);
        verify(mockDatabaseHelper.addAppointments(appointmentDtoList)).called(1);
      });

      test('should return Right with a list of appointments from the local database if API call times out', () async {
        // Arrange
        final userId = '123';
        final appointmentDto = AppointmentDto(id: '1', title: 'Appointment 1', author: 'Haile', body: 'body 1', date: '2023-06-02', time: '10:00 AM');
        final expectedDomain = AppointmentDomain.fromJson(appointmentDto.toJson());
        final appointmentDtoList = [appointmentDto];
        final expectedResult = Right([expectedDomain]);

        when(mockAppointmentAPI.getAppointmentsByUser(userId)).thenThrow(JJTimeoutException());
        when(mockDatabaseHelper.getAppointmentsByUser(userId)).thenAnswer((_) async => []);
        
        // Act
        final result = await repository.getAppointmentsForUser(userId);

        // Assert
        expect(result, expectedResult);
        verify(mockDatabaseHelper.getAppointmentsByUser(userId)).called(1);
      });

      test('should return Left with AppointmentFailure.serverError() on API failure', () async {
        // Arrange
        final userId = '123';
        final expectedResult = Left(AppointmentFailure.serverError());

        when(mockAppointmentAPI.getAppointmentsByUser(userId)).thenAnswer((_) => Future.error( Exception()));
        
        // Act
        final result = await repository.getAppointmentsForUser(userId);

        // Assert
        expect(result, expectedResult);
      });
    });

    group('addAppointment', () {
      test('should return Right with the added AppointmentDomain on success', () async {
        // Arrange
        final appointmentForm = AppointmentForm(title: 'New Appointment', body: 'body 1', date: '2023-06-02', time: '10:00 AM');
        final appointmentDto = AppointmentDto(id: '1', title: 'New Appointment', author: 'Haile', body: 'body 1', date: '2023-06-02', time: '10:00 AM');
        final expectedDomain = AppointmentDomain.fromJson(appointmentDto.toJson());
        final expectedResult = Right(expectedDomain);

        when(mockAppointmentAPI.createAppointment(appointmentForm.toDto())).thenAnswer((_) async => appointmentDto);
        when(mockDatabaseHelper.addAppointments([appointmentDto])).thenAnswer((_) async {});
        
        // Act
        final result = await repository.addAppointment(appointmentForm);

        // Assert
        expect(result, expectedResult);
        verify(mockDatabaseHelper.addAppointments([appointmentDto])).called(1);
      });

      test('should return Left with AppointmentFailure.serverError() on API failure', () async {
        // Arrange
        final appointmentForm = AppointmentForm(title: 'New Appointment', body: 'body 1', date: '2023-06-02', time: '10:00 AM');
        final expectedResult = Left(AppointmentFailure.serverError());

        when(mockAppointmentAPI.createAppointment(appointmentForm.toDto())).thenThrow(Exception());
        
        // Act
        final result = await repository.addAppointment(appointmentForm);

        // Assert
        expect(result, expectedResult);
      });
    });

    group('updateAppointment', () {
      test('should return Right with the updated AppointmentDomain on success', () async {
        // Arrange
        final appointmentForm = AppointmentForm(title: 'Updated Appointment', body: 'body 1', date: '2023-06-02', time: '10:00 AM');
        final appointmentId = '1';
        final appointmentDto = AppointmentDto(id: appointmentId, title: 'Updated Appointment', author: 'Haile', body: 'body 1', date: '2023-06-02', time: '10:00 AM');
        final expectedDomain = AppointmentDomain.fromJson(appointmentDto.toJson());
        final expectedResult = Right(expectedDomain);

        when(mockAppointmentAPI.updateAppointment(appointmentForm.toDto(), appointmentId)).thenAnswer((_) async => appointmentDto);
        when(mockDatabaseHelper.updateAppointment(appointmentDto.toAppointmentEntity())).thenAnswer((_) async {});
        
        // Act
        final result = await repository.updateAppointment(appointmentForm, appointmentId);

        // Assert
        expect(result, expectedResult);
        verify(mockDatabaseHelper.updateAppointment(appointmentDto.toAppointmentEntity())).called(1);
      });

      test('should return Left with AppointmentFailure.serverError() on API failure', () async {
        // Arrange
        final appointmentForm = AppointmentForm(title: 'Updated Appointment', body: 'body 1', date: '2023-06-02', time: '10:00 AM');
        final appointmentId = '1';
        final expectedResult = Left(AppointmentFailure.serverError());

        when(mockAppointmentAPI.updateAppointment(appointmentForm.toDto(), appointmentId)).thenThrow(Exception());
        
        // Act
        final result = await repository.updateAppointment(appointmentForm, appointmentId);

        // Assert
        expect(result, expectedResult);
      });
    });

    group('deleteAppointment', () {
      test('should return Right with unit on success', () async {
        // Arrange
        final appointmentId = '1';
        final expectedResult = Right(unit);

        when(mockDatabaseHelper.removeAppointment(appointmentId)).thenAnswer((_) async {});
        when(mockAppointmentAPI.deleteAppointment(appointmentId)).thenAnswer((_) async {});
        
        // Act
        final result = await repository.deleteAppointment(appointmentId);

        // Assert
        expect(result, expectedResult);
        verify(mockDatabaseHelper.removeAppointment(appointmentId)).called(1);
        verify(mockAppointmentAPI.deleteAppointment(appointmentId)).called(1);
      });

      test('should return Left with AppointmentFailure.serverError() on API failure', () async {
        // Arrange
        final appointmentId = '1';
        final expectedResult = Left(AppointmentFailure.serverError());

        when(mockDatabaseHelper.removeAppointment(appointmentId)).thenThrow(Exception());
        
        // Act
        final result = await repository.deleteAppointment(appointmentId);

        // Assert
        expect(result, expectedResult);
      });
    });
  });
}
