import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/application/note/bloc/note_bloc.dart';
import 'package:frontend/application/note/bloc/note_event.dart';
import 'package:frontend/application/note/bloc/note_state.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';
import 'package:frontend/domain/note/note.dart';

@GenerateMocks([NoteRepositoryInterface])
void main() {
  late NoteBloc noteBloc;
  late MockNoteRepositoryInterface mockNoteRepository;

  setUp(() {
    mockNoteRepository = MockNoteRepositoryInterface();
    noteBloc = NoteBloc(noteRepositoryInterface: mockNoteRepository);
  });

  tearDown(() {
    noteBloc.close();
  });

  group('NoteBloc', () {
    final noteForm = NoteForm(body: '', title: ''); // Provide a note form for testing
    final noteId = 'note_id'; // Provide a note ID for testing
    final userId = 'user_id'; // Provide a user ID for testing
    final noteDomain = NoteDomain(author: '', body: '', title: ''); // Provide a note domain object for testing

    test('emits NoteStateSuccess when adding a note', () {
      when(mockNoteRepository.addNote(noteForm))
          .thenAnswer((_) async => Right(noteDomain));

      final expected = [
        NoteStateLoading(),
        NoteStateSuccess(noteDomain),
      ];

      expectLater(noteBloc.stream, emitsInOrder(expected));

      noteBloc.add(NoteEventAdd(noteForm));
    });

    test('emits NoteStateSuccess when updating a note', () {
      when(mockNoteRepository.updateNote(noteForm: noteForm, noteId: noteId))
          .thenAnswer((_) async => Right(noteDomain));

      final expected = [
        NoteStateLoading(),
        NoteStateSuccess(noteDomain),
      ];

      expectLater(noteBloc.stream, emitsInOrder(expected));

      noteBloc.add(NoteEventUpdate(noteForm, noteId));
    });

    test('emits NoteStateDeleted when deleting a note', () {
      when(mockNoteRepository.deleteNote(noteId))
          .thenAnswer((_) async => Right(unit));

      final expected = [
        NoteStateLoading(),
        NoteStateDeleted(),
      ];

      expectLater(noteBloc.stream, emitsInOrder(expected));

      noteBloc.add(NoteEventDelete(noteId));
    });

    test('emits NoteStateSuccessMultiple when getting notes for a user', () {
      final notes = [
        NoteDomain(author: '', body: '', title: ''),
        NoteDomain(author: '', body: '', title: ''),
      ]; // Provide notes for testing
      when(mockNoteRepository.getNotesForUser(userId))
          .thenAnswer((_) async => Right(notes));

      final expected = [
        NoteStateLoading(),
        NoteStateSuccessMultiple(notes),
      ];

      expectLater(noteBloc.stream, emitsInOrder(expected));

      noteBloc.add(NoteEventGetByUser(userId));
    });
  });
}

class MockNoteRepositoryInterface extends Mock implements NoteRepositoryInterface {}
