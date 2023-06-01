import 'package:dartz/dartz.dart';
import 'package:frontend/domain/post/post_domain.dart';
import 'package:frontend/domain/post/post_failure.dart';
import 'package:frontend/domain/post/post_form.dart';
import 'package:frontend/domain/post/post_repository_interface.dart';
import 'package:frontend/infrastructure/post/post_api.dart';
import 'package:frontend/infrastructure/post/post_dto.dart';
import 'package:frontend/infrastructure/post/post_form_mapper.dart';
import 'package:frontend/local_data/database/jj_database_helper.dart';

class PostRepository implements PostRepositoryInterface {
  final DatabaseHelper databaseHelper = DatabaseHelper.instance;
  final PostAPI postApi;

  PostRepository(this.postApi);
  @override
  Future<Either<PostFailure, List<PostDomain>>> getPosts() async {
    try {
      var posts = await databaseHelper.getPosts();

      if (posts.isEmpty) {
        List<PostDto> postDto = await postApi.getPosts();
        await databaseHelper.addPosts(postDto);
        posts = await databaseHelper.getPosts();
      }

      return Right(posts);
    } catch (e) {
      return left(PostFailure.serverError());
    }
  }

  @override
  Future<Either<PostFailure, List<PostDomain>>> getPostsForAuthor(
      String author) async {
    try {
      var posts = await databaseHelper.getPostsByUser(author);

      if (posts.isEmpty) {
        List<PostDto> postDto = await postApi.getPostByUser(author);
        await databaseHelper.addPosts(postDto);
        posts = await databaseHelper.getPostsByUser(author);
      }

      return Right(posts);
    } catch (e) {
      return Left(PostFailure.serverError());
    }
  }

  @override
  Future<Either<PostFailure, PostDomain>> addPost(PostForm postForm) async {
    try {
      var createdPost = await postApi.createPost(postForm.toDto());
      return right(PostDomain.fromJson(createdPost.toJson()));
    } catch (e) {
      return left(PostFailure.serverError());
    }
  }

  @override
  Future<Either<PostFailure, PostDomain>> updatePost(
      {required PostForm postForm, required String postId}) async {
    try {
      var updatedPost = await postApi.updatePost(postForm.toDto(), postId);
      return right(PostDomain.fromJson(updatedPost.toJson()));
    } catch (e) {
      return left(PostFailure.serverError());
    }
  }

  @override
  Future<Either<PostFailure, Unit>> deletePost(String postId) async {
    try {
      await databaseHelper.removePost(postId);
      await postApi.deletePost(postId);
      return right(unit);
    } catch (e) {
      return left(PostFailure.serverError());
    }
  }

  @override
  Future<Either<PostFailure, PostDomain>> changeLike(
      String liker, String postId) async {
    try {
      var updatedPost = await postApi.changeLike(liker, postId);
      return right(PostDomain.fromJson(updatedPost.toJson()));
    } catch (e) {
      return left(PostFailure.serverError());
    }
  }
}
