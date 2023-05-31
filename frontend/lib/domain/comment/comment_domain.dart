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
}
