import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_form_dto.freezed.dart';
part 'post_form_dto.g.dart';

@freezed
class PostFormDto with _$PostFormDto {

  const factory PostFormDto({
    required String body,
    required List<String> comments,
    required int likes,
  }) = _PostFormDto;

  factory PostFormDto.fromJson(Map<String, dynamic> json) =>
      _$PostFormDtoFromJson(json);
}
