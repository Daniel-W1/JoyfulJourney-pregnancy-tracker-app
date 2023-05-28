class CommentDomain {
  final String id;
  final String body;
  final String post_id;
  final String author;

  CommentDomain({
    required this.id,
    required this.body,
    required this.post_id,
    required this.author,
  });
  
  factory CommentDomain.fromJson(Map<String, dynamic> json) {
    return CommentDomain(
      id: json['id'] as String,
      body: json['body'] as String,
      post_id: json['post_id'] as String,
      author: json['author'] as String,
    );
  }
}
