
import 'package:frontend/domain/comment/comment_form.dart';
import 'package:frontend/infrastructure/comment/comment_form_dto.dart';

extension CFMapper on CommentForm {
  CommentFormDto toDto() {
    return CommentFormDto(
      body: body,
    );
  }
}