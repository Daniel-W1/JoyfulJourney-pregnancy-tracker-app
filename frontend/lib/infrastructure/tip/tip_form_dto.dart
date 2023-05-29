class TipFormDto {
  final String body;
  final String title;
  final String type;

  TipFormDto({
    required this.body,
    required this.title,
    required this.type,
  });

  factory TipFormDto.fromJson(Map<String, dynamic> json) {
    return TipFormDto(
      body: json['body'],
      title: json['title'],
      type: json['type'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'body': body,
      'title': title,
      'type': type,
    };
  }
}
