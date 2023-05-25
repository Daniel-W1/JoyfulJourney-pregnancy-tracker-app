import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tipform_dto.freezed.dart';
part 'tipform_dto.g.dart';

@freezed
class TipFormDto with _$TipFormDto {
  const TipFormDto._();

  const factory TipFormDto({
    required String id,
    required String body,
    required String title,
    required String type,
  }) = _TipFormDto;

  factory TipFormDto.fromJson(Map<String, dynamic> json) =>
      _$TipFormDtoFromJson(json);
}
