import 'package:dartz/dartz.dart';
import 'package:frontend/domain/post/post_domain.dart';
import 'package:frontend/domain/post/post_failure.dart';
import 'package:frontend/domain/post/post_form.dart';
import 'package:frontend/domain/post/post_repository_interface.dart';
import 'package:frontend/infrastructure/post/post_api.dart';
import 'package:frontend/infrastructure/post/post_dto.dart';
import 'package:frontend/infrastructure/post/post_form_mapper.dart';
import 'package:frontend/infrastructure/post/post_mapper.dart';
import 'package:frontend/local_data/database/jj_database_helper.dart';
import 'package:frontend/util/jj_timeout_exception.dart';

class PostRepository implements PostRepositoryInterface {
  final DatabaseHelper databaseHelper = DatabaseHelper.instance;
  final PostAPI postApi;

  PostRepository(this.postApi);
  @override
  Future<Either<PostFailure, List<PostDomain>>> getPosts() async {
    try {
      List<PostDto> posts = await postApi.getPosts();
      await databaseHelper.addPosts(posts);

      return Right(posts.map((e) => PostDomain.fromJson(e.toJson())).toList());
    } on JJTimeoutException catch (timeout) {
      var posts = await databaseHelper.getPosts();
      if (posts.isEmpty) {
        return left(PostFailure.serverError());
      } else {
        return right(posts);
      }
    } catch (e) {
      print("Error: $e");
      return left(PostFailure.serverError());
    }
  }

  @override
  Future<Either<PostFailure, List<PostDomain>>> getPostsForAuthor(
      String author) async {
    try {
      // var posts = await databaseHelper.getPostsByUser(author);
      print('repo here ----------------------------------');
      if (true) {
        List<PostDto> postDto = await postApi.getPostByUser(author);
        print(postDto);
        await databaseHelper.addPosts(postDto);

        // posts = await databaseHelper.getPostsByUser(author);
        return Right(
            postDto.map((e) => PostDomain.fromJson(e.toJson())).toList());
      }
    } catch (e) {
      return Left(PostFailure.serverError());
    }
  }

  @override
  Future<Either<PostFailure, PostDomain>> addPost(PostForm postForm) async {
    try {
      print("add post called");
      var createdPost = await postApi.createPost(postForm.toDto());
      await databaseHelper.addPosts([createdPost]);
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
      await databaseHelper.updatePost(updatedPost.toPostEntity());
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
      await databaseHelper.updatePost(updatedPost.toPostEntity());
      return right(PostDomain.fromJson(updatedPost.toJson()));
    } catch (e) {
      return left(PostFailure.serverError());
    }
  }
}
