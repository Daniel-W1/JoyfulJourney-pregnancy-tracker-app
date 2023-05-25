

import 'package:freezed_annotation/freezed_annotation.dart';
part 'post_domain.freezed.dart';
part 'post_domain.g.dart';


@freezed
class PostDomain with _$PostDomain{
  const factory PostDomain({
    required String body,
    required String author,
    required List<String> comments,
    required List<String> likes,
    required String id
  }) = _PostDomain;

  factory PostDomain.fromJson(Map<String, dynamic> json) =>
      _$PostDomainFromJson(json);
}
