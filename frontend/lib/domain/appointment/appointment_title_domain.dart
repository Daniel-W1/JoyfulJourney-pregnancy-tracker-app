import 'package:equatable/equatable.dart';

class AppointmentTitle extends Equatable {
  String? appointment_title;
  AppointmentTitle({required this.appointment_title}) {
    if (this.appointment_title!.length < 2 ||
        !RegExp(r'^[a-zA-Z . 0-9]+$').hasMatch(this.appointment_title!)) {
      throw Exception('Enter correct note title');
    }
  }

  @override
  String toString() {
    return appointment_title!;
  }

  @override
  List<Object> get props => [appointment_title!];
}
