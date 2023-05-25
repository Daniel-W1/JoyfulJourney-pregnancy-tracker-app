import 'package:frontend/domain/note/note.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_event.freezed.dart';

@freezed
abstract class NoteEvent with _$NoteEvent {
  const factory NoteEvent.add(NoteForm noteForm) = NoteEventAdd;
  const factory NoteEvent.update(NoteForm noteForm, String noteId) = NoteEventUpdate;
  const factory NoteEvent.delete(String noteId) = NoteEventDelete;
  const factory NoteEvent.getByUser(String userId) = NoteEventGetByUser;
}