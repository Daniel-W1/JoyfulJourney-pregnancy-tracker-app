import 'package:frontend/domain/post/post_author_domain.dart';
import 'package:frontend/domain/post/post_domain.dart';
import 'package:dartz/dartz.dart';
import 'package:frontend/domain/post/post_failure.dart';
import 'package:frontend/domain/post/post_form.dart';
import 'package:frontend/domain/post/post_id_domain.dart';

abstract class PostRepositoryInterface {
  Future<Either<Postfailure, List<PostDomain>>> getPosts();
  Future<Either<Postfailure, List<PostDomain>>> getPostsForAuthor(
      PostAuthorDomain author);
  Future<void> addPost(PostDomain post);
  Future<Either<Postfailure, PostDomain>> updatePost(PostForm post, PostIdDomain post_id);
  Future<void> deletePost(PostDomain post);
}
