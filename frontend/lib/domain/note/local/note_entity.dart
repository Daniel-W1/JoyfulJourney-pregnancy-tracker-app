import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_entity.freezed.dart';
part 'note_entity.g.dart';

@freezed
class NoteEntity with _$NoteEntity {
  const factory NoteEntity({
    required String id,
    required String body,
    required String title,
    required String user_id,
  }) = _NoteEntity;

  factory NoteEntity.fromJson(Map<String, dynamic> json) =>
      _$NoteEntityFromJson(json);
}
