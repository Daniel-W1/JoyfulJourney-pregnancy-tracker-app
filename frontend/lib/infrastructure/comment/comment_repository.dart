import 'dart:io';
import 'dart:developer' as developer;

import 'package:dartz/dartz.dart';
import 'package:frontend/domain/comment/comment_domain.dart';
import 'package:frontend/domain/comment/comment_failure.dart';
import 'package:frontend/domain/comment/comment_form.dart';
import 'package:frontend/domain/comment/comment_repository_interface.dart';
import 'package:frontend/infrastructure/comment/comment_api.dart';
import 'package:frontend/infrastructure/comment/comment_dto.dart';
import 'package:frontend/infrastructure/comment/comment_form_mapper.dart';
import 'package:frontend/local_data/database/jj_database_helper.dart';

class CommentRepository implements CommentRepositoryInterface {
  final DatabaseHelper databaseHelper = DatabaseHelper.instance;
  final CommentAPI commentApi;

  CommentRepository(this.commentApi);

  @override
  Future<Either<CommentFailure, List<CommentDomain>>> getCommentsForPost(
      String postId) async {
    try {
      var comments = await databaseHelper.getCommentsByPost(postId);

      if (comments.isEmpty) {
        List<CommentDto> commentDto =
            await commentApi.getCommentsByPost(postId);
        await databaseHelper.addComments(commentDto);
        comments = await databaseHelper.getCommentsByPost(postId);
      }

      return Right(comments);
    } catch (e) {
      return Left(CommentFailure.serverError());
    }
  }

  @override
  Future<Either<CommentFailure, CommentDomain>> addComment(
      CommentForm commentForm) async {
    try {
      var comment = await commentApi.createComment(commentForm.toDto());
      return right(CommentDomain.fromJson(comment.toJson()));
    } catch (e) {
      return left(CommentFailure.serverError());
    }
  }

  @override
  Future<Either<CommentFailure, CommentDomain>> updateComment(
      {required CommentForm commentForm, required String commentId}) async {
    try {
      var commentDomainDto =
          await commentApi.updateComment(commentForm.toDto(), commentId);
      return right(CommentDomain.fromJson(commentDomainDto.toJson()));
    } catch (e) {
      return left(CommentFailure.serverError());
    }
  }

  @override
  Future<Either<CommentFailure, Unit>> deleteComment(String commentId) async {
    try {
      await databaseHelper.removeComment(commentId);
      await commentApi.deleteComment(commentId);
      return right(unit);
    } catch (e) {
      return left(CommentFailure.serverError());
    }
  }

  @override
  Future<Either<CommentFailure, List<CommentDomain>>> getUserComments(
      String userId) async {
    try {
      var comments = await databaseHelper.getCommentsByUser(userId);

      if (comments.isEmpty) {
        List<CommentDto> commentDto =
            await commentApi.getCommentsByUser(userId);
        await databaseHelper.addComments(commentDto);
        comments = await databaseHelper.getCommentsByUser(userId);
      }

      return Right(comments);
    } catch (e) {
      return Left(CommentFailure.serverError());
    }
  }

  @override
  Future<Either<CommentFailure, List<CommentDomain>>> getComments() async {
    try {
      var allComments = await databaseHelper.getComments();

      if (allComments.isEmpty) {
        List<CommentDto> commentsDto = await commentApi.getComments();
        await databaseHelper.addComments(commentsDto);
        allComments = await databaseHelper.getComments();
      }

      return Right(allComments);
    } catch (e) {
      return left(CommentFailure.serverError());
    }
  }
}
