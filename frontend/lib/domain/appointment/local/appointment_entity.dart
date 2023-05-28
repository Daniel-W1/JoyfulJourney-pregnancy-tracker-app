class AppointmentEntity {
  final String id;
  final String title;
  final String description;
  final String date;
  final String time;
  final String userId;

  AppointmentEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.date,
    required this.time,
    required this.userId,
  });

  factory AppointmentEntity.fromJson(Map<String, dynamic> json) {
    return AppointmentEntity(
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
