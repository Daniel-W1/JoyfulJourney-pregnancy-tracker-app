import 'package:frontend/domain/appointment/appointment.dart';

class AppointmentDomain {
  String? id;
  final String title;
  final String body;
  final String date;
  final String time;
  final String author;

  AppointmentDomain({
    this.id,
    required this.title,
    required this.body,
    required this.date,
    required this.time,
    required this.author,
  });

  factory AppointmentDomain.fromJson(Map<String, dynamic> json) {
    return AppointmentDomain(
      id: json['id'] as String,
      title: json['title'] as String,
      body: json['body'] as String,
      date: json['date'] as String,
      time: json['time'] as String,
      author: json['author'] as String,
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

  void validate() {
    if (title.isEmpty) {
      throw ValidationError('Title cannot be empty');
    }

    if (body.isEmpty) {
      throw ValidationError('Body cannot be empty');
    }

    if (date.isEmpty) {
      throw ValidationError('Date cannot be empty');
    }

    if (time.isEmpty) {
      throw ValidationError('Time cannot be empty');
    }

    if (author.isEmpty) {
      throw ValidationError('Author cannot be empty');
    }
  }
}
