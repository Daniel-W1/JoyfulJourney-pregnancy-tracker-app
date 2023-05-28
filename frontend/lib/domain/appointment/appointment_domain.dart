class AppointmentDomain {
  final String id;
  final String title;
  final String description;
  final String date;
  final String time;
  final String userId;

  AppointmentDomain({
    required this.id,
    required this.title,
    required this.description,
    required this.date,
    required this.time,
    required this.userId,
  });

  factory AppointmentDomain.fromJson(Map<String, dynamic> json) {
    return AppointmentDomain(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      date: json['date'] as String,
      time: json['time'] as String,
      userId: json['user_id'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'date': date,
      'time': time,
      'user_id': userId,
    };
  }
}
