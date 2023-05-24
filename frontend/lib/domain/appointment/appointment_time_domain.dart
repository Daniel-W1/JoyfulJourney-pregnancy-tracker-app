class AppointmentTimeDomain {
  String? time;

  // validate the time
  AppointmentTimeDomain({required this.time}) {
    if (time!.isEmpty) {
      throw Exception("Time cannot be empty");
    }
    if (time!.length > 5) {
      throw Exception("Time cannot be greater than 5 characters");
    }
    if (time!.length < 5) {
      throw Exception("Time cannot be less than 5 characters");
    }
    if (time!.substring(2, 3) != ":") {
      throw Exception("Time must be in the format HH:MM");
    }
    if (int.parse(time!.substring(0, 2)) > 23) {
      throw Exception("Time cannot be greater than 23 hours");
    }
    if (int.parse(time!.substring(3, 5)) > 59) {
      throw Exception("Time cannot be greater than 59 minutes");
    }
  }

  @override
  String toString() {
    return time!;
  }
}
