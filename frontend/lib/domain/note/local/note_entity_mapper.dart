import 'package:frontend/domain/note/note_domain.dart';
import 'package:frontend/domain/note/local/note_entity.dart';
import 'package:frontend/infrastructure/note/note_dto.dart';

extension NoteEntityExtensions on NoteEntity {
  NoteDomain toNoteDomain() {
    return NoteDomain(
      id: id,
      body: body,
      title: title,
      userId: userId,
    );
  }

  NoteEntity fromNoteDomain(NoteDomain note) {
    return NoteEntity(
      id: note.id,
      body: note.body,
      title: note.title,
      userId: note.userId,
    );
  }

  NoteDto toNoteDto() {
    return NoteDto(
      id: id,
      body: body,
      title: title,
      userId: userId,
    );
  }

  NoteEntity fromNoteDto(NoteDto noteDto) {
    return NoteEntity(
      id: noteDto.id,
      body: noteDto.body,
      title: noteDto.title,
      userId: noteDto.userId,
    );
  }
}
