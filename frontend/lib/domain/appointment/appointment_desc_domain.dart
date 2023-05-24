import 'package:equatable/equatable.dart';

class AppointmentBodyDomain extends Equatable {
  String? app_body;

  AppointmentBodyDomain({required this.app_body}) {
    if (!RegExp(r'^[a-zA-Z . _ 0-9 ]+$').hasMatch(this.app_body!)) {
      throw Exception('Enter correct medicine description');
    } else if (this.app_body!.length < 3) {
      throw Exception('Description is too short!');
    }
  }

  @override
  String toString() {
    return app_body!;
  }

  @override
  List<Object> get props => [app_body!];
}
