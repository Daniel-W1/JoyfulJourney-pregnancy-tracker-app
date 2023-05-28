import 'package:dartz/dartz.dart';
import 'package:frontend/domain/post/post_domain.dart';
import 'package:frontend/domain/post/post_failure.dart';
import 'package:frontend/domain/post/post_form.dart';
import 'package:frontend/domain/post/post_repository_interface.dart';
import 'package:frontend/infrastructure/post/post_api.dart';
import 'package:frontend/infrastructure/post/post_dto.dart';
import 'package:frontend/infrastructure/post/post_form_mapper.dart';

class PostRepository implements PostRepositoryInterface {
  final PostAPI postApi;

  PostRepository(this.postApi);
  @override
  Future<Either<Postfailure, List<PostDomain>>> getPosts() async {
    try {
      var posts = await postApi.getPosts();
      return right(posts
          .map((PostDto postDto) => PostDomain.fromJson(postDto.toJson()))
          .toList());
    } catch (e) {
      return left(const Postfailure.serverError());
    }
  }

  @override
  Future<Either<Postfailure, List<PostDomain>>> getPostsForAuthor(
      String author) async {
    try {
      var posts = await postApi.getPostByUser(author);
      return right(posts
          .map((PostDto postDto) => PostDomain.fromJson(postDto.toJson()))
          .toList());
    } catch (e) {
      return left(const Postfailure.serverError());
    }
  }

  @override
  Future<Either<Postfailure, PostDomain>> addPost(PostForm postForm) async {
    try {
      var createdPost = await postApi.createPost(postForm.toDto());
      return right(PostDomain.fromJson(createdPost.toJson()));
    } catch (e) {
      return left(const Postfailure.serverError());
    }
  }

  @override
  Future<Either<Postfailure, PostDomain>> updatePost(
      PostForm postForm, String postId) async {
    try {
      var updatedPost = await postApi.updatePost(postForm.toDto(), postId);
      return right(PostDomain.fromJson(updatedPost.toJson()));
    } catch (e) {
      return left(const Postfailure.serverError());
    }
  }

  @override
  Future<Either<Postfailure, Unit>> deletePost(String postId) async {
    try {
      await postApi.deletePost(postId);
      return right(unit);
    } catch (e) {
      return left(Postfailure.serverError());
    }
  }

  @override
  Future<Either<Postfailure, PostDomain>> changeLike(
      String liker, String postId) async {
    try {
      var updatedPost = await postApi.changeLike(liker, postId);
      return right(PostDomain.fromJson(updatedPost.toJson()));
    } catch (e) {
      return left(const Postfailure.serverError());
    }
  }
}
