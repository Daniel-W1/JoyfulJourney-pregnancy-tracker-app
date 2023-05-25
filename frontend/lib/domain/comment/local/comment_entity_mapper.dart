import 'package:frontend/domain/comment/comment_domain.dart';
import 'package:frontend/domain/comment/local/comment_entity.dart';
import 'package:frontend/infrastructure/comment/comment_dto.dart';

extension CommentEntityExtensions on CommentEntity {
  CommentDomain toCommentDomain() {
    return CommentDomain(
      id: id,
      body: body,
      post_id: post_id,
      author: author,
    );
  }

  CommentEntity fromCommentDomain(CommentDomain comment) {
    return CommentEntity(
      id: comment.id,
      body: comment.body,
      post_id: comment.post_id,
      author: comment.author,
    );
  }

  CommentDto toCommentDto() {
    return CommentDto(
      id: id,
      body: body,
      post_id: post_id,
      author: author,
    );
  }

  CommentEntity fromCommentDto(CommentDto commentDto) {
    return CommentEntity(
      id: commentDto.id,
      body: commentDto.body,
      post_id: commentDto.post_id,
      author: commentDto.author,
    );
  }
}
