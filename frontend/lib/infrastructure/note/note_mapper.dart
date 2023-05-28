import 'package:frontend/domain/note/note_domain.dart';
import 'package:frontend/domain/note/local/note_entity.dart';
import 'package:frontend/infrastructure/note/note_dto.dart';

extension on NoteDto {
  NoteDto fromNoteEntity(NoteEntity note) {
    return NoteDto(
      id: note.id,
      title: note.title,
      body: note.body,
      author: note.author,
    );
  }

  NoteEntity toNoteEntity() {
    return NoteEntity(
      id: id,
      title: title,
      body: body,
      author: author,
    );
  }

  NoteDomain toNoteDomain() {
    return NoteDomain(
      id: id,
      title: title,
      body: body,
      author: author,

    );
  }
}
