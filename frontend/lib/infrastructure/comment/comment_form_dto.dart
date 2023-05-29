class CommentFormDto {
  final String body;

  CommentFormDto({
    required this.body,
  });

  factory CommentFormDto.fromJson(Map<String, dynamic> json) {
    return CommentFormDto(
      body: json['body'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'body': body,
    };
  }
}
