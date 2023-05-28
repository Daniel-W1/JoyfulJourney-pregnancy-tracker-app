import 'package:frontend/domain/note/note.dart';

class NoteEvent {
  const NoteEvent._();

  const factory NoteEvent.add(NoteForm noteForm) = NoteEventAdd;
  const factory NoteEvent.update(NoteForm noteForm, String noteId) = NoteEventUpdate;
  const factory NoteEvent.delete(String noteId) = NoteEventDelete;
  const factory NoteEvent.getByUser(String userId) = NoteEventGetByUser;

  String get errorMessage {
    if (this is NoteEventAdd) {
      return 'Failed to add note';
    } else if (this is NoteEventUpdate) {
      return 'Failed to update note';
    } else if (this is NoteEventDelete) {
      return 'Failed to delete note';
    } else if (this is NoteEventGetByUser) {
      return 'Failed to get notes by user';
    } else {
      return 'Unknown error';
    }
  }
}

class NoteEventAdd extends NoteEvent {
  final NoteForm noteForm;

  const NoteEventAdd(this.noteForm) : super._();
}

class NoteEventUpdate extends NoteEvent {
  final NoteForm noteForm;
  final String noteId;

  const NoteEventUpdate(this.noteForm, this.noteId) : super._();
}

class NoteEventDelete extends NoteEvent {
  final String noteId;

  const NoteEventDelete(this.noteId) : super._();
}

class NoteEventGetByUser extends NoteEvent {
  final String userId;

  const NoteEventGetByUser(this.userId) : super._();
}