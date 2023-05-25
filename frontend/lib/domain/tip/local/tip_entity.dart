import 'package:freezed_annotation/freezed_annotation.dart';

part 'tip_entity.freezed.dart';
part 'tip_entity.g.dart';

@freezed
class TipEntity with _$TipEntity {
  const factory TipEntity({
    required String body,
    required String title,
    required String id,
    required String type,
  }) = _TipEntity;

  factory TipEntity.fromJson(Map<String, dynamic> json) =>
      _$TipEntityFromJson(json);
}