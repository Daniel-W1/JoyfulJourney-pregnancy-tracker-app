import '../../domain/comment/comment_domain.dart';
import 'comment_dto.dart';

extension CommentMapper on CommentDto {
  CommentDomain toComment() {
    return CommentDomain(
      id: id,
      body: body,
      post_id: post_id,
      author: author,
    );
  }
}
