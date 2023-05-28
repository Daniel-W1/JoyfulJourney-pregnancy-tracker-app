import 'package:dartz/dartz.dart';
import 'package:frontend/domain/note/note_domain.dart';
import 'package:frontend/domain/note/note_form.dart';
import 'package:frontend/domain/note/note_failure.dart';

abstract class NoteRepositoryInterface {
  Future<Either<NoteFailure, List<NoteDomain>>> getNotesForUser(String userId);
  Future<Either<NoteFailure, NoteDomain>> addNote(NoteForm note);
  Future<Either<NoteFailure, NoteDomain>> updateNote(NoteForm note, String noteId);
  Future<Either<NoteFailure, Unit>> deleteNote(String noteId);
}
