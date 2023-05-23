// enum for appointment status

class AppointmentStatusDomain {
  String? appointment_status;
  AppointmentStatusDomain({required this.appointment_status}) {
    if (this.appointment_status == null) {
      throw Exception('Enter correct appointment status');
    }

    if (this.appointment_status != "pending" &&
        this.appointment_status != "completed") {
      throw Exception('Enter correct appointment status');
    }
  }

  @override
  String toString() {
    return appointment_status.toString();
  }
}
