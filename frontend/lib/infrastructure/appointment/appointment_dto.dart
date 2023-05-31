class AppointmentDto {
  String id;
  String title;
  String body;
  String date;
  String time;
  String author;

  AppointmentDto({
    required this.id,
    required this.title,
    required this.body,
    required this.date,
    required this.time,
    required this.author,
  });

  factory AppointmentDto.fromJson(Map<String, dynamic> json) {
    return AppointmentDto(
      id: json['_id'],
      title: json['title'],
      body: json['body'],
      date: json['date'],
      time: json['time'],
      author: json['author'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'body': body,
      'date': date,
      'time': time,
      'author': author,
    };
  }
}
