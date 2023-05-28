class NoteFormDto {
  final String title;
  final String body;

  NoteFormDto({
    required this.title,
    required this.body,
  });

  factory NoteFormDto.fromJson(Map<String, dynamic> json) {
    return NoteFormDto(
      title: json['title'],
      body: json['body'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'body': body,
    };
  }
}
