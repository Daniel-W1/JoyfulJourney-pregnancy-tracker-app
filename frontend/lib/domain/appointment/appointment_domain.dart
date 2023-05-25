// create the appointment domain
class AppointmentDomain {
  String title;
  String description;
  String date;
  String time;
  String user_id;
  String status;
  String id;

  AppointmentDomain({
    required this.id,
    required this.title,
    required this.description,
    required this.date,
    required this.time,
    required this.user_id,
    required this.status,
  });

  @override
  String toString() {
    return 'AppointmentDomain(title: $title, description: $description, date: $date, time: $time, user_id: $user_id, status: $status)';
  }
}
