import 'package:frontend/domain/post/post_form.dart';
import 'package:frontend/infrastructure/post/post_form_dto.dart';

extension PostFormMapper on PostForm {
  PostFormDto toDto() {
    return PostFormDto(
      body: body,
      comments: comments,
      likes: likes,
    );
  }
}
