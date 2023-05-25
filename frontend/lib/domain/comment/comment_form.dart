import 'package:freezed_annotation/freezed_annotation.dart';
part 'comment_form.freezed.dart';

@freezed
class CommentForm with _$CommentForm {
  factory CommentForm({
    required String body,
  }) = _CommentForm;
}
