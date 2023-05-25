import 'dart:io';
import 'dart:developer' as developer;

import 'package:dartz/dartz.dart';
import 'package:frontend/domain/post/post_domain.dart';
import 'package:frontend/domain/post/post_failure.dart';
import 'package:frontend/domain/post/post_form.dart';
import 'package:frontend/domain/post/post_id_domain.dart';
import 'package:frontend/domain/post/post_repository_interface.dart';
import 'package:frontend/infrastructure/post/post_api.dart';

class PostRepository implements PostRepositoryInterface {
  final PostApi postApi;

  PostRepository(this.postApi);

  @override
  Future<Either<Postfailure, PostDomain>> updatePost({required PostForm postForm, required PostIdDomain post_id}) async {
    try {
      var post = await postApi.updatePost();
      return right(questions
          .map((QuestionDto questionDto) =>
              Question.fromJson(questionDto.toJson()))
          .toList());
    }
    // TODO: handle more errors
    // TODO: Make sure user is authenticated
    catch (e) {
      return left(const QuestionFailure.serverError());
    }

    try {
      PostDto postDto = await postApi.updatePost(postForm: postForm);
      return Either(val: postDto.toPost());
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log("Unexpected error while updating post in Post Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  @override
  Future<Either<Post>> getPost() async {
    try {
      PostDto postDto = await postApi.getPost();
      return Either(val: postDto.toPost());
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log("Unexpected error while getting post in Post Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  @override
  Future<Either<void>> deletePost() async {
    try {
      await postApi.deletePost();
      return Either();
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log("Unexpected error while deleting post in Post Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }
}
