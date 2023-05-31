class CommentDto {
  String? id;
  final String body;
  final String postId;
  final String author;

  CommentDto({
    this.id,
    required this.body,
    required this.postId,
    required this.author,
  });

  factory CommentDto.fromJson(Map<String, dynamic> json) {
    return CommentDto(
      id: json['_id'],
      body: json['body'],
      postId: json['postId'],
      author: json['author'],
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
