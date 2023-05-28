class NoteEntity {
  final String id;
  final String body;
  final String title;
  final String userId;

  NoteEntity({
    required this.id,
    required this.body,
    required this.title,
    required this.userId,
  });

  factory NoteEntity.fromJson(Map<String, dynamic> json) {
    return NoteEntity(
      id: json['id'] as String,
      body: json['body'] as String,
      title: json['title'] as String,
      userId: json['user_id'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'body': body,
      'title': title,
      'user_id': userId,
    };
  }
}
