import 'package:frontend/domain/comment/comment_failure.dart';

class CommentDomain {
  String? id;
  final String body;
  final String postId;
  final String author;

  CommentDomain({
    this.id,
    required this.body,
    required this.postId,
    required this.author,
  });

  factory CommentDomain.fromJson(Map<String, dynamic> json) {
    return CommentDomain(
      id: json['id'] as String,
      body: json['body'] as String,
      postId: json['postId'] as String,
      author: json['author'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'body': body,
      'postId': postId,
      'author': author,
    };
  }

  void validate() {
    if (body.isEmpty) {
      throw ValidationError('Body cannot be empty');
    }

    if (postId.isEmpty) {
      throw ValidationError('PostId cannot be empty');
    }

    if (author.isEmpty) {
      throw ValidationError('Author cannot be empty');
    }
  }
}
