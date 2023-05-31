import 'package:frontend/domain/note/note_form.dart';
import 'package:frontend/infrastructure/note/note_dto.dart';
import 'package:frontend/infrastructure/note/note_form_dto.dart';

extension NFMapper on NoteForm {
  NoteFormDto toDto() {
    return NoteFormDto(
      title: title,
      body: body,
    );
  }
}

extension NFMapper2 on NoteFormDto {
  NoteDto toAuthoredDto(String author) {
    return NoteDto(body: body, title: title, author: author);
  }
}
