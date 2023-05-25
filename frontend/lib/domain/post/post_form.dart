import 'package:freezed_annotation/freezed_annotation.dart';
part 'post_form.freezed.dart';

@freezed
class PostForm with _$PostForm {
  factory PostForm({
    required String body,
    required List<String> comments,
    required List<String> likes,
  }) = _PostForm;
}
