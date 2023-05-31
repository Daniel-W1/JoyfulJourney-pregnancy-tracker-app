import 'package:frontend/domain/appointment/appointment_form.dart';
import 'package:frontend/domain/comment/comment_form.dart';
import 'package:frontend/infrastructure/appointment/appointment_form_dto.dart';
import 'package:frontend/infrastructure/comment/comment_dto.dart';
import 'package:frontend/infrastructure/comment/comment_form_dto.dart';

extension CFMapper on CommentForm {
  CommentFormDto toDto() {
    return CommentFormDto(
      body: body,
      postId: postId
    );
  }
}

extension CFMapper2 on CommentFormDto {
  CommentDto toAuthoredDto(String author) {
    return CommentDto(body: body, postId: postId, author: author);
  }
}
