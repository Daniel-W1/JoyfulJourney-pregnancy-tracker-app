class CommentEntity {
  final String id;
  final String body;
  final String post_id;
  final String author;

  CommentEntity({
    required this.id,
    required this.body,
    required this.post_id,
    required this.author,
  });

  factory CommentEntity.fromJson(Map<String, dynamic> json) {
    return CommentEntity(
      id: json['id'] as String,
      body: json['body'] as String,
      post_id: json['post_id'] as String,
      author: json['author'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'body': body,
      'post_id': post_id,
      'author': author,
    };
  }
}
