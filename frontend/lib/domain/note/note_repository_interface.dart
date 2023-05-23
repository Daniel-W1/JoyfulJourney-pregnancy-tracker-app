import 'package:frontend/domain/note/note_domain.dart';
import 'package:frontend/domain/note/note_user_id_domain.dart';

abstract class NoteRepository {
  Future<Either<Notefailure, List<NoteDomain>>> getNotesForUser(Noteuserid userId);
  Future<void> addNote(NoteDomain note);
  Future<void> updateNote(NoteDomain note);
  Future<void> deleteNote(NoteDomain note);
}
