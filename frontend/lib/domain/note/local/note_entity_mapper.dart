import 'package:frontend/domain/note/note_domain.dart';
import 'package:frontend/domain/note/local/note_entity.dart';
import 'package:frontend/infrastructure/note/note_dto.dart';

extension NoteEntityExtensions on NoteEntity {
  NoteDomain toNoteDomain() {
    return NoteDomain(
      id: id,
      body: body,
      title: title,
      author: author,
    );
  }

  NoteEntity fromNoteDomain(NoteDomain note) {
    return NoteEntity(
      id: note.id,
      body: note.body,
      title: note.title,
      author: note.author,
    );
  }

  NoteDto toNoteDto() {
    return NoteDto(
      id: id,
      body: body,
      title: title,
      author: author,
    );
  }

  NoteEntity fromNoteDto(NoteDto noteDto) {
    return NoteEntity(
      id: noteDto.id,
      body: noteDto.body,
      title: noteDto.title,
      author: noteDto.author,
    );
  }
}
