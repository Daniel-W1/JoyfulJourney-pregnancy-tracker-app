
import 'package:freezed_annotation/freezed_annotation.dart';
part 'note_domain.freezed.dart';
part 'note_domain.g.dart';

@freezed
class NoteDomain with _$NoteDomain {
  // it has title, body, user_id
  // it has a constructor that takes title, body, user_id
  // it has a toString method
  // it has a props method

  const factory NoteDomain({
    required String id,
    required String body,
    required String title,
    required String user_id,
  }) = _NoteDomain;

  factory NoteDomain.fromJson(Map<String, dynamic> json) =>
      _$NoteDomainFromJson(json);
}
