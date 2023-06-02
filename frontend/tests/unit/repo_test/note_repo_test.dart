// import 'package:test/test.dart';
// import 'package:dartz/dartz.dart';
// import 'package:frontend/domain/note/note_domain.dart';
// import 'package:frontend/domain/note/note_failure.dart';
// import 'package:frontend/domain/note/note_form.dart';
// import 'package:frontend/infrastructure/note/note_repository.dart';
// import 'package:mockito/mockito.dart';

// class MockNoteRepository extends Mock implements NoteRepository {}

// void main() {
//   late NoteRepository noteRepository;
//   late MockNoteRepository mockNoteRepository;

//   setUp(() {
//     mockNoteRepository = MockNoteRepository();
//     noteRepository = NoteRepository(mockNoteRepository);
//   });

//   group('addNote', () {
//     test('should add a new note and return Right with NoteDomain', () async {
//       // Arrange
//       final noteForm = NoteForm(title: 'Test Note', body: 'This is a test');
//       final noteDomain = NoteDomain(
//         id: '123',
//         title: noteForm.title,
//         body: noteForm.body,
//         author: '6479cb6bb292737574016b56',
//       );

//       when(mockNoteRepository.addNote(any)).thenAnswer((_) async => right(noteDomain));

//       // Act
//       final result = await noteRepository.addNote(noteForm);

//       // Assert
//       expect(result, equals(right(noteDomain)));
//       verify(mockNoteRepository.addNote(any)).called(1);
//     });

//     test('should return Left with NoteFailure.serverError on exception',
//         () async {
//       // Arrange
//       final noteForm = NoteForm(title: 'Test Note', body: 'This is a test');

//       when(mockNoteRepository.addNote(any)).thenAnswer((_) async => left(NoteFailure.serverError()));

//       // Act
//       final result = await noteRepository.addNote(noteForm);

//       // Assert
//       expect(result, equals(left(NoteFailure.serverError())));
//       verify(mockNoteRepository.addNote(any)).called(1);
//     });
//   });

//   group('updateNote', () {
//     test('should update an existing note and return Right with NoteDomain',
//         () async {
//       // Arrange
//       final noteId = '123';
//       final noteForm = NoteForm(title: 'Updated Note', body: 'Updated body');
//       final updatedNoteDomain = NoteDomain(
//         id: noteId,
//         title: noteForm.title,
//         body: noteForm.body,
//         author: '6479cb6bb292737574016b56',
//       );

//       when(mockNoteRepository.updateNote(
//         noteForm: anyNamed('noteForm'),
//         noteId: anyNamed('noteId'),
//       )).thenAnswer((_) async => right(updatedNoteDomain));

//       // Act
//       final result = await noteRepository.updateNote(
//         noteForm: noteForm,
//         noteId: noteId,
//       );

//       // Assert
//       expect(result, equals(right(updatedNoteDomain)));
//       verify(mockNoteRepository.updateNote(
//         noteForm: anyNamed('noteForm'),
//         noteId: anyNamed('noteId'),
//       )).called(1);
//     });

//     test('should return Left with NoteFailure.serverError on exception',
//         () async {
//       // Arrange
//       final noteId = '123';
//       final noteForm = NoteForm(title: 'Updated Note', body: 'Updated body');

//       when(mockNoteRepository.updateNote(
//         noteForm: anyNamed('noteForm'),
//         noteId: anyNamed('noteId'),
//       )).thenAnswer((_) async => left(NoteFailure.serverError()));

//       // Act
//       final result = await noteRepository.updateNote(
//         noteForm: noteForm,
//         noteId: noteId,
//       );

//       // Assert
//       expect(result, equals(left(NoteFailure.serverError())));
//       verify(mockNoteRepository.updateNote(
//         noteForm: anyNamed('noteForm'),
//         noteId: anyNamed('noteId'),
//       )).called(1);
//     });
//   });

//   group('deleteNote', () {
//     test('should delete the note and return Right with Unit', () async {
//       // Arrange
//       final noteId = '123';

//       when(mockNoteRepository.deleteNote(any)).thenAnswer((_) async => right(unit));

//       // Act
//       final result = await noteRepository.deleteNote(noteId);

//       // Assert
//       expect(result, equals(right(unit)));
//       verify(mockNoteRepository.deleteNote(any)).called(1);
//     });

//     test('should return Left with NoteFailure.serverError on exception',
//         () async {
//       // Arrange
//       final noteId = '123';

//       when(mockNoteRepository.deleteNote(any)).thenAnswer((_) async => left(NoteFailure.serverError()));

//       // Act
//       final result = await noteRepository.deleteNote(noteId);

//       // Assert
//       expect(result, equals(left(NoteFailure.serverError())));
//       verify(mockNoteRepository.deleteNote(any)).called(1);
//     });
//   });

//   group('getNotesForUser', () {
//     test('should return the list of notes for the user', () async {
//       // Arrange
//       final userId = '6479cb6bb292737574016b56';
//       final notesFromDatabase = [
//         NoteDomain(
//           id: '1',
//           title: 'Note 1',
//           body: 'Body 1',
//           author: '6479cb6bb292737574016b56',
//         ),
//         NoteDomain(
//           id: '2',
//           title: 'Note 2',
//           body: 'Body 2',
//           author: '6479cb6bb292737574016b56',
//         ),
//       ];

//       when(mockNoteRepository.getNotesForUser(any))
//           .thenAnswer((_) async => right(notesFromDatabase));

//       // Act
//       final result = await noteRepository.getNotesForUser(userId);

//       // Assert
//       expect(result, equals(right(notesFromDatabase)));
//       verify(mockNoteRepository.getNotesForUser(any)).called(1);
//     });

//     test('should return Left with NoteFailure.serverError on exception',
//         () async {
//       // Arrange
//       final userId = '6479cb6bb292737574016b56';

//       when(mockNoteRepository.getNotesForUser(any))
//           .thenAnswer((_) async => left(NoteFailure.serverError()));

//       // Act
//       final result = await noteRepository.getNotesForUser(userId);

//       // Assert
//       expect(result, equals(left(NoteFailure.serverError())));
//       verify(mockNoteRepository.getNotesForUser(any)).called(1);
//     });
//   });
// }
