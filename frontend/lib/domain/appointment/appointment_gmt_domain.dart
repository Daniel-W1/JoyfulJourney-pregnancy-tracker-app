class AppointmentGmtDomain {
  String? appointmentGmt;

  AppointmentGmtDomain({required this.appointmentGmt}) {
    if (this.appointmentGmt! != "PM" && this.appointmentGmt! != "AM") {
      throw Exception("AppointmentGmt should not below 8 character");
    }
  }

  @override
  String toString() {
    return appointmentGmt!;
  }
}
