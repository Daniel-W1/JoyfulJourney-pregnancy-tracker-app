import 'package:freezed_annotation/freezed_annotation.dart';
part 'comment_domain.freezed.dart';
part 'comment_domain.g.dart';


@freezed
class CommentDomain with _$CommentDomain {

  const factory CommentDomain({
    required String id,
    required String body,
    required String post_id,
    required String author,
  }) = _CommentDomain;


  factory CommentDomain.fromJson(Map<String, dynamic> json) =>
      _$CommentDomainFromJson(json);

}
