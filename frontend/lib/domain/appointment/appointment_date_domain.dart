// validate appointment date
class AppointmentDate {
  String? appointment_date;
  AppointmentDate({required this.appointment_date}) {
    if (this.appointment_date!.length < 2 ||
        !RegExp(r'^[a-zA-Z . 0-9]+$').hasMatch(this.appointment_date!)) {
      throw Exception('Enter correct appointment date');
    }
  }

  @override
  String toString() {
    return appointment_date!;
  }
}
