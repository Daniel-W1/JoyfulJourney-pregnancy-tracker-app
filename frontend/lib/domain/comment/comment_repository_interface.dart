import 'package:dartz/dartz.dart';
import 'package:frontend/domain/comment/comment_domain.dart';
import 'package:frontend/domain/comment/post_id_domain.dart';

import 'comment_failure.dart';

abstract class CommentRepository {
  Future<Either<Commentfailure, List<CommentDomain>>> getCommentsForPost(
      Postid postId);
  Future<void> addComment(CommentDomain comment);
  Future<void> updateComment(CommentDomain comment);
  Future<void> deleteComment(CommentDomain comment);
}
