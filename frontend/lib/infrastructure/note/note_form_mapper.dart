import 'package:frontend/domain/note/note_form.dart';
import 'package:frontend/infrastructure/note/note_form_dto.dart';

extension NFMapper on NoteForm {
  NoteFormDto toDto() {
    return NoteFormDto(
      title: title,
      description: description,
    );
  }
}
