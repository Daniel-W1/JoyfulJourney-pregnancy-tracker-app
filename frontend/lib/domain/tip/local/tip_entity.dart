class TipEntity {
  final String body;
  final String title;
  final String id;
  final String type;

  TipEntity({
    required this.body,
    required this.title,
    required this.id,
    required this.type,
  });

  factory TipEntity.fromJson(Map<String, dynamic> json) {
    return TipEntity(
      body: json['body'] as String,
      title: json['title'] as String,
      id: json['id'] as String,
      type: json['type'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'body': body,
      'title': title,
      'id': id,
      'type': type,
    };
  }
}
