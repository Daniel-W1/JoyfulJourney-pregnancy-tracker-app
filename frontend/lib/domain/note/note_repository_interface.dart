import 'package:dartz/dartz.dart';
import 'package:frontend/domain/note/note_domain.dart';
import 'package:frontend/domain/note/note_form.dart';
import 'note_failure.dart';

abstract class NoteRepositoryInterface {
  Future<Either<Notefailure, List<NoteDomain>>> getNotesForUser(
      String userId);
  Future<Either<Notefailure, NoteDomain>> addNote(NoteForm note);
  Future<Either<Notefailure, NoteDomain>> updateNote(NoteForm note, String noteId);
  Future<Either<Notefailure, Unit>> deleteNote(String noteId);
}
