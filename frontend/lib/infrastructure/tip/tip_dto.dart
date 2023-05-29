class TipDto {
  final String id;
  final String body;
  final String title;
  final String type;

  TipDto({
    required this.id,
    required this.body,
    required this.title,
    required this.type,
  });

  factory TipDto.fromJson(Map<String, dynamic> json) {
    return TipDto(
      id: json['id'],
      body: json['body'],
      title: json['title'],
      type: json['type'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'body': body,
      'title': title,
      'type': type,
    };
  }
}
