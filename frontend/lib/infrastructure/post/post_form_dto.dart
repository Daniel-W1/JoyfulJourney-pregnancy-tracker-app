class PostFormDto {
  final String body;
  final List<String> comments;
  final List<String> likes;

  PostFormDto({
    required this.body,
    required this.comments,
    required this.likes,
  });

  factory PostFormDto.fromJson(Map<String, dynamic> json) {
    return PostFormDto(
      body: json['body'],
      comments: (json['comments'] as List<dynamic>).cast<String>(),
      likes: (json['likes'] as List<dynamic>).cast<String>(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'body': body,
      'comments': comments,
      'likes': likes,
      'author': '644ec9e0da3f7fc3a4c30a2a',
    };
  }
}

