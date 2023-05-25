
import 'package:freezed_annotation/freezed_annotation.dart';
part 'tip_domain.freezed.dart';
part 'tip_domain.g.dart';


@freezed
class TipDomain with _$TipDomain{
  // it has title, body, user_id
  // it has a constructor that takes title, body, user_id
  // it has a toString method
  // it has a props method

  const factory TipDomain({
    required String id,
    required String body,
    required String title,
    required String type,
  }) = _TipDomain;

  factory TipDomain.fromJson(Map<String, dynamic> json) =>
      _$TipDomainFromJson(json);
}
