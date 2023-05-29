class NoteDto {
  final String id;
  final String body;
  final String title;
  final String author;

  NoteDto({
    required this.id,
    required this.body,
    required this.title,
    required this.author,
  });

  factory NoteDto.fromJson(Map<String, dynamic> json) {
    return NoteDto(
      id: json['_id'],
      body: json['body'],
      title: json['title'],
      author: json['author'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'body': body,
      'title': title,
      'author': author,
    };
  }
}
