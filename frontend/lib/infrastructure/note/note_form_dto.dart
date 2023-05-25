import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'note_form_dto.freezed.dart';
part 'note_form_dto.g.dart';

@freezed
class NoteFormDto with _$NoteFormDto {
  const factory NoteFormDto({
    required String title,
    required String description,
  }) = _NoteFormDto;

  factory NoteFormDto.fromJson(Map<String, dynamic> json) =>
      _$NoteFormDtoFromJson(json);
}