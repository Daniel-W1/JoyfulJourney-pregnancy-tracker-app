class NoteDomain {
  final String id;
  final String body;
  final String title;
  final String userId;

  NoteDomain({
    required this.id,
    required this.body,
    required this.title,
    required this.userId,
  });

  factory NoteDomain.fromJson(Map<String, dynamic> json) {
    return NoteDomain(
      id: json['id'] as String,
      body: json['body'] as String,
      title: json['title'] as String,
      userId: json['userId'] as String,
    );
  }

  @override
  String toString() {
    return 'NoteDomain(id: $id, body: $body, title: $title, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is NoteDomain &&
        other.id == id &&
        other.body == body &&
        other.title == title &&
        other.userId == userId;
  }

  @override
  int get hashCode {
    return id.hashCode ^ body.hashCode ^ title.hashCode ^ userId.hashCode;
  }
}
