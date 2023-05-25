import 'package:dartz/dartz.dart';
import 'package:frontend/domain/comment/comment_domain.dart';
import 'package:frontend/domain/comment/comment_failure.dart';
import 'package:frontend/domain/comment/comment_form.dart';

abstract class CommentRepositoryInterface {
  Future<Either<Commentfailure, List<CommentDomain>>> getCommentsForPost(
      String postId);
  Future<Either<Commentfailure, List<CommentDomain>>> getComments();
  Future<Either<Commentfailure, List<CommentDomain>>> getUserComments(
      String userid);
  Future<Either<Commentfailure, CommentDomain>> addComment(CommentForm comment);
  Future<Either<Commentfailure, CommentDomain>> updateComment(CommentForm commentForm, String commentId);
  Future<Either<Commentfailure, Unit>> deleteComment(String commentId);
}
