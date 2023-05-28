class AppointmentFormDto {
  String title;
  String body;
  String date;
  String time;

  AppointmentFormDto({
    required this.title,
    required this.body,
    required this.date,
    required this.time,
  });

  factory AppointmentFormDto.fromJson(Map<String, dynamic> json) {
    return AppointmentFormDto(
      title: json['title'],
      body: json['body'],
      date: json['date'],
      time: json['time'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'body': body,
      'date': date,
      'time': time,
    };
  }
}
