
import 'package:dartz/dartz.dart';
import 'package:frontend/domain/note/note_domain.dart';
import 'package:frontend/domain/note/note_failure.dart';
import 'package:frontend/domain/note/note_form.dart';
import 'package:frontend/domain/note/note_repository_interface.dart';
import 'package:frontend/infrastructure/note/note_api.dart';
import 'package:frontend/infrastructure/note/note_dto.dart';
import 'package:frontend/infrastructure/note/note_form_mapper.dart';

class NoteRepository implements NoteRepositoryInterface {
  final NoteAPI noteApi;

  NoteRepository(this.noteApi);

  @override
  Future<Either<NoteFailure, NoteDomain>> addNote(
      NoteForm noteForm) async {
    try {
      var note = await noteApi.createNote(noteForm.toDto());
      return right(NoteDomain.fromJson(note.toJson()));
    } catch (e) {
      return left(NoteFailure.serverError());
    }
  }

  @override
  Future<Either<NoteFailure, NoteDomain>> updateNote(
      {required NoteForm noteForm, required String noteId}) async {
    try {
      var updatedNoteDto =
          await noteApi.updateNote(noteForm.toDto(), noteId);
      return right(NoteDomain.fromJson(updatedNoteDto.toJson()));
    } catch (e) {
      return left(NoteFailure.serverError());
    }
  }

  @override
  Future<Either<NoteFailure, Unit>> deleteNote(String noteId) async {
    try {
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
      var notes = await noteApi.getNotesForUser(userId);
      return right(notes
          .map((NoteDto noteDto) => NoteDomain.fromJson(noteDto.toJson()))
          .toList());
    } catch (e) {
      return left(NoteFailure.serverError());
    }
  }

}
