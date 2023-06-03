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
import 'package:frontend/infrastructure/comment/comment_mapper.dart';
import 'package:frontend/local_data/database/jj_database_helper.dart';
import 'package:frontend/util/jj_timeout_exception.dart';
import 'package:http/http.dart';

class CommentRepository implements CommentRepositoryInterface {
  final DatabaseHelper databaseHelper = DatabaseHelper.instance;
  final CommentAPI commentApi;

  CommentRepository(this.commentApi);

  @override
  Future<Either<CommentFailure, List<CommentDomain>>> getCommentsForPost(
      String postId) async {
    try {
      List<CommentDto> comments = await commentApi.getCommentsByPost(postId);
      await databaseHelper.addComments(comments);

      return Right(
          comments.map((e) => CommentDomain.fromJson(e.toJson())).toList());
    } on JJTimeoutException catch (timeout) {
      var comments = await databaseHelper.getCommentsByPost(postId);
      if (comments.isEmpty) {
        return left(CommentFailure.serverError());
      } else {
        return right(comments);
      }
    } on ServerError catch (e) {
      return left(CommentFailure.serverError());
    } on NetworkError catch (e) {
      return left(CommentFailure.networkError());
    } on Unauthorized catch (e) {
      return left(CommentFailure.unauthorized());
    } on NotFound catch (e) {
      return left(CommentFailure.notFound());
    } on PermissionDenied catch (e) {
      return left(CommentFailure.permissionDenied());
    } on Forbidden catch (e) {
      return left(CommentFailure.forbidden());
    } on ValidationError catch (e) {
      return left(CommentFailure.validationError(e.message));
    } catch (e) {
      return left(CommentFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<CommentFailure, CommentDomain>> addComment(
      CommentForm commentForm) async {
    try {
      var comment = await commentApi.createComment(commentForm.toDto());
      await databaseHelper.addComments([comment]);
      return right(CommentDomain.fromJson(comment.toJson()));
    } on ServerError catch (e) {
      return left(CommentFailure.serverError());
    } on NetworkError catch (e) {
      return left(CommentFailure.networkError());
    } on Unauthorized catch (e) {
      return left(CommentFailure.unauthorized());
    } on NotFound catch (e) {
      return left(CommentFailure.notFound());
    } on PermissionDenied catch (e) {
      return left(CommentFailure.permissionDenied());
    } on Forbidden catch (e) {
      return left(CommentFailure.forbidden());
    } on ValidationError catch (e) {
      return left(CommentFailure.validationError(e.message));
    } catch (e) {
      return left(CommentFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<CommentFailure, CommentDomain>> updateComment(
      {required CommentForm commentForm, required String commentId}) async {
    try {
      var commentDomainDto =
          await commentApi.updateComment(commentForm.toDto(), commentId);
      await databaseHelper.updateComment(commentDomainDto.toCommentEntity());
      return right(CommentDomain.fromJson(commentDomainDto.toJson()));
    } on ServerError catch (e) {
      return left(CommentFailure.serverError());
    } on NetworkError catch (e) {
      return left(CommentFailure.networkError());
    } on Unauthorized catch (e) {
      return left(CommentFailure.unauthorized());
    } on NotFound catch (e) {
      return left(CommentFailure.notFound());
    } on PermissionDenied catch (e) {
      return left(CommentFailure.permissionDenied());
    } on Forbidden catch (e) {
      return left(CommentFailure.forbidden());
    } on ValidationError catch (e) {
      return left(CommentFailure.validationError(e.message));
    } catch (e) {
      return left(CommentFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<CommentFailure, Unit>> deleteComment(String commentId) async {
    try {
      await databaseHelper.removeComment(commentId);
      await commentApi.deleteComment(commentId);
      return right(unit);
    } on ServerError catch (e) {
      return left(CommentFailure.serverError());
    } on NetworkError catch (e) {
      return left(CommentFailure.networkError());
    } on Unauthorized catch (e) {
      return left(CommentFailure.unauthorized());
    } on NotFound catch (e) {
      return left(CommentFailure.notFound());
    } on PermissionDenied catch (e) {
      return left(CommentFailure.permissionDenied());
    } on Forbidden catch (e) {
      return left(CommentFailure.forbidden());
    } on ValidationError catch (e) {
      return left(CommentFailure.validationError(e.message));
    } catch (e) {
      return left(CommentFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<CommentFailure, List<CommentDomain>>> getUserComments(
      String userId) async {
    try {
      List<CommentDto> comments = await commentApi.getCommentsByUser(userId);
      await databaseHelper.addComments(comments);

      return Right(
          comments.map((e) => CommentDomain.fromJson(e.toJson())).toList());
    } on JJTimeoutException catch (timeout) {
      var comments = await databaseHelper.getCommentsByUser(userId);
      if (comments.isEmpty) {
        return left(CommentFailure.serverError());
      } else {
        return right(comments);
      }
    } on ServerError catch (e) {
      return left(CommentFailure.serverError());
    } on NetworkError catch (e) {
      return left(CommentFailure.networkError());
    } on Unauthorized catch (e) {
      return left(CommentFailure.unauthorized());
    } on NotFound catch (e) {
      return left(CommentFailure.notFound());
    } on PermissionDenied catch (e) {
      return left(CommentFailure.permissionDenied());
    } on Forbidden catch (e) {
      return left(CommentFailure.forbidden());
    } on ValidationError catch (e) {
      return left(CommentFailure.validationError(e.message));
    } catch (e) {
      return left(CommentFailure.customError(e.toString()));
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
    } on ServerError catch (e) {
      return left(CommentFailure.serverError());
    } on NetworkError catch (e) {
      return left(CommentFailure.networkError());
    } on Unauthorized catch (e) {
      return left(CommentFailure.unauthorized());
    } on NotFound catch (e) {
      return left(CommentFailure.notFound());
    } on PermissionDenied catch (e) {
      return left(CommentFailure.permissionDenied());
    } on Forbidden catch (e) {
      return left(CommentFailure.forbidden());
    } on ValidationError catch (e) {
      return left(CommentFailure.validationError(e.message));
    } catch (e) {
      return left(CommentFailure.customError(e.toString()));
    }
  }
}
