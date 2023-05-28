class PostDomain {
  final String body;
  final String author;
  final List<String> comments;
  final List<String> likes;
  final String id;

  PostDomain({
    required this.body,
    required this.author,
    required this.comments,
    required this.likes,
    required this.id,
  });

  factory PostDomain.fromJson(Map<String, dynamic> json) {
    return PostDomain(
      body: json['body'] as String,
      author: json['author'] as String,
      comments: (json['comments'] as List<dynamic>).cast<String>(),
      likes: (json['likes'] as List<dynamic>).cast<String>(),
      id: json['id'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'body': body,
      'author': author,
      'comments': comments,
      'likes': likes,
      'id': id,
    };
  }
}
