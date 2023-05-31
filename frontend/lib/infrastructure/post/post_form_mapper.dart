import 'package:frontend/domain/post/post_form.dart';
import 'package:frontend/infrastructure/post/post_dto.dart';
import 'package:frontend/infrastructure/post/post_form_dto.dart';

extension PFMapper on PostForm {
  PostFormDto toDto() {
    return PostFormDto(
      body: body,
      comments: comments,
      likes: likes,
    );
  }
}

extension PFDtoMapper on PostFormDto {
  PostDto toAuthoredDto(author) {
    return PostDto(
      author: author,
      body: body,
      comments: comments,
      likes: likes,
    );
  }
}