import 'package:freezed_annotation/freezed_annotation.dart';
part 'comment_form.freezed.dart';

@freezed
class CommentForm with _$CommentForm {
  factory CommentForm({
    required String description, //TODO: Change to image
    required String postid,
  }) = _CommentForm;
}
