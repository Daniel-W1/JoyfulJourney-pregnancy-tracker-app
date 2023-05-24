import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'postform_dto.freezed.dart';
part 'postform_dto.g.dart';

@freezed
class PostFormDto with _$PostFormDto {
  const PostFormDto._();

  const factory PostFormDto({
    required String id,
    required String body,
    required String author,
    required List<String> comments,
    required String likes,
  }) = _PostFormDto;

  factory PostFormDto.fromJson(Map<String, dynamic> json) =>
      _$PostFormDtoFromJson(json);
}
