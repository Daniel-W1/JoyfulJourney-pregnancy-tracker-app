import 'package:frontend/domain/post/post_domain.dart';
import 'package:dartz/dartz.dart';
import 'package:frontend/domain/post/post_failure.dart';
import 'package:frontend/domain/post/post_form.dart';

abstract class PostRepository {
  Future<Either<Postfailure, List<PostDomain>>> getPosts();
  Future<Either<Postfailure, List<PostDomain>>> getPostsForAuthor(
      String author);
  Future<Either<Postfailure, PostDomain>> addPost(PostForm post);
  Future<Either<Postfailure, PostDomain>> updatePost(PostForm post);
  Future<Either<Postfailure, Unit>> deletePost(String postId);
}
