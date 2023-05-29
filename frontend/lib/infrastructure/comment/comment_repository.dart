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

class CommentRepository implements CommentRepositoryInterface {
  final CommentAPI commentApi;

  CommentRepository(this.commentApi);

  @override
  Future<Either<CommentFailure, List<CommentDomain>>> getCommentsForPost(
      String postId) async {
    try {
      var comment = await commentApi.getCommentsByPost(postId);
      return right(comment
          .map((CommentDto commentDto) =>
              CommentDomain.fromJson(commentDto.toJson()))
          .toList());
    } catch (e) {
      return left(CommentFailure.serverError());
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
      var comment = await commentApi.getCommentsByUser(userId);
      return right(comment
          .map((CommentDto commentDto) =>
              CommentDomain.fromJson(commentDto.toJson()))
          .toList());
    } catch (e) {
      return left(CommentFailure.serverError());
    }
  }

  @override
  Future<Either<CommentFailure, List<CommentDomain>>> getComments() async {
    try {
      var comment = await commentApi.getComments();
      return right(comment
          .map((CommentDto commentDto) =>
              CommentDomain.fromJson(commentDto.toJson()))
          .toList());
    } catch (e) {
      return left(CommentFailure.serverError());
    }
  }
}
