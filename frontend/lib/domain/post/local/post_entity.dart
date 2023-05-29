class PostEntity {
  final String body;
  final String author;
  final List<String> comments;
  final List<String> likes;
  final String id;

  PostEntity({
    required this.body,
    required this.author,
    required this.comments,
    required this.likes,
    required this.id,
  });

  factory PostEntity.fromJson(Map<String, dynamic> json) {
    return PostEntity(
      body: json['body'],
      author: json['author'],
      comments: List<String>.from(json['comments']),
      likes: List<String>.from(json['likes']),
      id: json['id'],
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
