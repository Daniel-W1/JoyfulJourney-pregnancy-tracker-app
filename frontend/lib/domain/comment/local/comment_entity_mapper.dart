import 'package:frontend/domain/comment/comment_domain.dart';
import 'package:frontend/domain/comment/local/comment_entity.dart';
import 'package:frontend/infrastructure/comment/comment_dto.dart';

extension CEMapper on CommentEntity {
  CommentDomain toCommentDomain() {
    return CommentDomain(
      id: id,
      body: body,
      postId: postId,
      author: author,
    );
  }

  CommentEntity fromCommentDomain(CommentDomain comment) {
    return CommentEntity(
      id: comment.id!,
      body: comment.body,
      postId: comment.postId,
      author: comment.author,
    );
  }

  CommentDto toCommentDto() {
    return CommentDto(
      id: id,
      body: body,
      postId: postId,
      author: author,
    );
  }

  CommentEntity fromCommentDto(CommentDto commentDto) {
    return CommentEntity(
      id: commentDto.id!,
      body: commentDto.body,
      postId: commentDto.postId,
      author: commentDto.author,
    );
  }
}
