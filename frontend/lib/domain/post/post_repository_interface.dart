import 'package:frontend/domain/post/post_author_domain.dart';
import 'package:frontend/domain/post/post_domain.dart';
import 'package:dartz/dartz.dart';


abstract class PostRepository {
  Future<Either<Postfailure, List<PostDomain>>> getPosts();
  Future<Either<Postfailure, List<PostDomain>>> getPostsForAuthor(PostAuthorDomain author);
  Future<void> addPost(PostDomain post);
  Future<void> updatePost(PostDomain post);
  Future<void> deletePost(PostDomain post);
}
