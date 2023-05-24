import 'package:frontend/domain/post/post_author_domain.dart';
import 'package:frontend/domain/post/post_body_domain.dart';
import 'package:frontend/domain/post/post_comment_domain.dart';
import 'package:frontend/domain/post/post_likes_domain.dart';

class PostDomain {
  PostBodyDomain body;
  PostAuthorDomain author;
  PostCommentDomain comment;
  PostLikesDomain likes;

  PostDomain({
    required this.body,
    required this.author,
    required this.comment,
    required this.likes,
  });

  @override
  String toString() {
    return 'PostDomain(body: $body, author: $author, comment: $comment, likes: $likes)';
  }

  @override
  List<Object> get props => [body, author, comment, likes];
}
