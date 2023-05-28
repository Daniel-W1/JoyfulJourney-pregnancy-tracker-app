class NoteEntity {
  final String id;
  final String body;
  final String title;
  final String author;

  NoteEntity({
    required this.id,
    required this.body,
    required this.title,
    required this.author,
  });

  factory NoteEntity.fromJson(Map<String, dynamic> json) {
    return NoteEntity(
      id: json['id'] as String,
      body: json['body'] as String,
      title: json['title'] as String,
      author: json['author'] as String,
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
