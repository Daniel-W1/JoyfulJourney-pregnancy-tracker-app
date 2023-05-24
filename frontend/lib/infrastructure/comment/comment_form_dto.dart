import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'commentform_dto.freezed.dart';
part 'commentform_dto.g.dart';

@freezed
class CommentFormDto with _$CommentFormDto {
  const CommentFormDto._();

  const factory CommentFormDto({
    required String id,
    required String body,
    required String post_id,
    required String author,
  }) = _CommentFormDto;

  factory CommentFormDto.fromJson(Map<String, dynamic> json) =>
      _$CommentFormDtoFromJson(json);
}