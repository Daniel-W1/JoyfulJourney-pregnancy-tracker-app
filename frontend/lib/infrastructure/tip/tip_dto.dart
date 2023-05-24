import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tip_dto.freezed.dart';
part 'tip_dto.g.dart';

@freezed
class TipDto with _$TipDto {
  const TipDto._();

  const factory TipDto({
    required String id,
    required String body,
    required String title,
    required String type,
  }) = _TipDto;

  factory TipDto.fromJson(Map<String, dynamic> json) =>
      _$TipDtoFromJson(json);
}
