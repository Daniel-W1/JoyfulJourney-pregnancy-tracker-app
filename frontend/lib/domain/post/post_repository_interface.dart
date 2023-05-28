import 'package:frontend/domain/post/post_domain.dart';
import 'package:dartz/dartz.dart';
import 'package:frontend/domain/post/post_failure.dart';
import 'package:frontend/domain/post/post_form.dart';

abstract class PostRepositoryInterface {
  Future<Either<PostFailure, List<PostDomain>>> getPosts();
  Future<Either<PostFailure, List<PostDomain>>> getPostsForAuthor(
      String author);
  Future<Either<PostFailure, PostDomain>> addPost(PostForm post);
  Future<Either<PostFailure, PostDomain>> updatePost(PostForm post, String postId);
  Future<Either<PostFailure, Unit>> deletePost(String postId);

  Future<Either<PostFailure, PostDomain>> changeLike(String liker, String postId);
}

