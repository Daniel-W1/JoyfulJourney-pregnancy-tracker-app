
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
  Future<Either<Notefailure, NoteDomain>> addNote(
      NoteForm noteForm) async {
    try {
      var note = await noteApi.createNote(noteForm.toDto());
      return right(NoteDomain.fromJson(note.toJson()));
    } catch (e) {
      return left(const Notefailure.serverError());
    }
  }

  @override
  Future<Either<Notefailure, NoteDomain>> updateNote(
      NoteForm noteForm, String noteId) async {
    try {
      var updatedNoteDto =
          await noteApi.updateNote(noteForm.toDto(), noteId);
      return right(NoteDomain.fromJson(updatedNoteDto.toJson()));
    } catch (e) {
      return left(const Notefailure.serverError());
    }
  }

  @override
  Future<Either<Notefailure, Unit>> deleteNote(String noteId) async {
    try {
      await noteApi.deleteNote(noteId);
      return right(unit);
    } catch (e) {
      return left(const Notefailure.serverError());
    }
  }

  @override
  Future<Either<Notefailure, List<NoteDomain>>> getNotesForUser(
      String userId) async {
    try {
      var notes = await noteApi.getNotesForUser(userId);
      return right(notes
          .map((NoteDto noteDto) => NoteDomain.fromJson(noteDto.toJson()))
          .toList());
    } catch (e) {
      return left(const Notefailure.serverError());
    }
  }

}
