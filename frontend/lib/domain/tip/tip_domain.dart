class TipDomain {
  final String id;
  final String body;
  final String title;
  final String type;

  TipDomain({
    required this.id,
    required this.body,
    required this.title,
    required this.type,
  });

  @override
  String toString() {
    return 'TipDomain(id: $id, body: $body, title: $title, type: $type)';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TipDomain &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          body == other.body &&
          title == other.title &&
          type == other.type;

  @override
  int get hashCode =>
      id.hashCode ^ body.hashCode ^ title.hashCode ^ type.hashCode;
  
  List<Object?> get props => [id, body, title, type];
  
  factory TipDomain.fromJson(Map<String, dynamic> json) {
    return TipDomain(
      id: json['id'] as String,
      body: json['body'] as String,
      title: json['title'] as String,
      type: json['type'] as String,
    );
  }
}
