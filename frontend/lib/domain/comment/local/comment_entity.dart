class CommentEntity {
  final String id;
  final String body;
  final String postId;
  final String author;

  CommentEntity({
    required this.id,
    required this.body,
    required this.postId,
    required this.author,
  });

  factory CommentEntity.fromJson(Map<String, dynamic> json) {
    return CommentEntity(
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
}
