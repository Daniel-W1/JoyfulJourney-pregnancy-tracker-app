class PostDto {
  final String id;
  final String body;
  final String author;
  final List<String> comments;
  final List<String> likes;

  PostDto({
    required this.id,
    required this.body,
    required this.author,
    required this.comments,
    required this.likes,
  });

  factory PostDto.fromJson(Map<String, dynamic> json) {
    return PostDto(
      id: json['_id'],
      body: json['body'],
      author: json['author'],
      comments: (json['comments'] as List<dynamic>).cast<String>(),
      likes: (json['likes'] as List<dynamic>).cast<String>(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'body': body,
      'author': author,
      'comments': comments,
      'likes': likes,
    };
  }
}
