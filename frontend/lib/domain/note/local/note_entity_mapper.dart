import 'package:frontend/domain/note/note_domain.dart';
import 'package:frontend/domain/note/local/note_entity.dart';

extension NoteEntityExtensions on NoteEntity {
  NoteDomain toNoteDomain() {
    return NoteDomain(
      id: id,
      body: body,
      title: title,
      user_id: user_id,
    );
  }

  NoteEntity fromNoteDomain(NoteDomain note) {
    return NoteEntity(
      id: note.id,
      body: note.body,
      title: note.title,
      user_id: note.user_id,
    );
  }

  NoteDto toNoteDto() {
    return NoteDto(
      id: id,
      body: body,
      title: title,
      user_id: user_id,
    );
  }

  NoteEntity fromNoteDto(NoteDto noteDto) {
    return NoteEntity(
      id: noteDto.id,
      body: noteDto.body,
      title: noteDto.title,
      user_id: noteDto.user_id,
    );
  }
}
