import 'package:frontend/domain/comment/comment_domain.dart';
import 'package:frontend/domain/comment/local/comment_entity.dart';
import 'package:frontend/infrastructure/comment/comment_dto.dart';

extension on CommentDto {
  CommentDto fromComment(CommentEntity comment) {
    return CommentDto(
      id: comment.id,
      body: comment.body,
      post_id: comment.post_id,
      author: comment.author,
    );
  }

  CommentEntity toCommentEntity() {
    return CommentEntity(
      id: id,
      body: body,
      post_id: post_id,
      author: author,
    );
  }

  CommentDomain fromDto(CommentDto comment) {
    return CommentDomain(
      id: comment.id,
      body: comment.body,
      post_id: comment.post_id,
      author: comment.author,
    );
  }
}
