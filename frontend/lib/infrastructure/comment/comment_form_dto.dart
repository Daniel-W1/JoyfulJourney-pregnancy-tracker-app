class CommentFormDto {
  final String body;
  final String postId;

  CommentFormDto({
    required this.body,
    required this.postId,
  });

  factory CommentFormDto.fromJson(Map<String, dynamic> json) {
    return CommentFormDto(
      body: json['body'],
      postId: json['postId']
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'body': body,
      'postId': postId
    };
  }
}
