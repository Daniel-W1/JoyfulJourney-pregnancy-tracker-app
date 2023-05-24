import 'package:freezed_annotation/freezed_annotation.dart';
part 'note_form.freezed.dart';

@freezed
class NoteForm with _$NoteForm {
  factory NoteForm({
    required String title,
    required String description, //TODO: Change to image
  }) = _NoteForm;
}
