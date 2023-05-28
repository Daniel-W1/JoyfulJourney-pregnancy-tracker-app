import 'package:dartz/dartz.dart';
import 'package:frontend/domain/comment/comment_domain.dart';
import 'package:frontend/domain/comment/comment_failure.dart';
import 'package:frontend/domain/comment/comment_form.dart';

abstract class CommentRepositoryInterface {
  Future<Either<CommentFailure, List<CommentDomain>>> getCommentsForPost(
      String postId);
  Future<Either<CommentFailure, List<CommentDomain>>> getComments();
  Future<Either<CommentFailure, List<CommentDomain>>> getUserComments(
      String userid);
  Future<Either<CommentFailure, CommentDomain>> addComment(CommentForm comment);
  Future<Either<CommentFailure, CommentDomain>> updateComment(CommentForm commentForm, String commentId);
  Future<Either<CommentFailure, Unit>> deleteComment(String commentId);
}
