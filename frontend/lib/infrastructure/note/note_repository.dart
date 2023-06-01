import 'package:dartz/dartz.dart';
import 'package:frontend/domain/note/note_domain.dart';
import 'package:frontend/domain/note/note_failure.dart';
import 'package:frontend/domain/note/note_form.dart';
import 'package:frontend/domain/note/note_repository_interface.dart';
import 'package:frontend/infrastructure/note/note_api.dart';
import 'package:frontend/infrastructure/note/note_dto.dart';
import 'package:frontend/infrastructure/note/note_form_mapper.dart';
import 'package:frontend/infrastructure/note/note_mapper.dart';
import 'package:frontend/local_data/database/jj_database_helper.dart';

class NoteRepository implements NoteRepositoryInterface {
  final DatabaseHelper databaseHelper = DatabaseHelper.instance;
  final NoteAPI noteApi;

  NoteRepository(this.noteApi);

  @override
  Future<Either<NoteFailure, NoteDomain>> addNote(NoteForm noteForm) async {
    try {
      var note = await noteApi.createNote(noteForm.toDto());
      await databaseHelper.addNotes([note]);
      return right(NoteDomain.fromJson(note.toJson()));
    } catch (e) {
      return left(NoteFailure.serverError());
    }
  }

  @override
  Future<Either<NoteFailure, NoteDomain>> updateNote(
      {required NoteForm noteForm, required String noteId}) async {
    try {
      var updatedNoteDto = await noteApi.updateNote(noteForm.toDto(), noteId);
      await databaseHelper.updateNote(updatedNoteDto.toNoteEntity());
      return right(NoteDomain.fromJson(updatedNoteDto.toJson()));
    } catch (e) {
      return left(NoteFailure.serverError());
    }
  }

  @override
  Future<Either<NoteFailure, Unit>> deleteNote(String noteId) async {
    try {
      await databaseHelper.removeNote(noteId);
      await noteApi.deleteNote(noteId);
      return right(unit);
    } catch (e) {
      return left(NoteFailure.serverError());
    }
  }

  @override
  Future<Either<NoteFailure, List<NoteDomain>>> getNotesForUser(
      String userId) async {
    try {
      var notes = await databaseHelper.getNotesByUser(userId);

      if (true) {
        List<NoteDto> noteDto = await noteApi.getNotesForUser(userId);
        await databaseHelper.addNotes(noteDto);
        notes = await databaseHelper.getNotesByUser(userId);
      }

      return Right(notes);
    } catch (e) {
      return Left(NoteFailure.serverError());
    }
  }
}
