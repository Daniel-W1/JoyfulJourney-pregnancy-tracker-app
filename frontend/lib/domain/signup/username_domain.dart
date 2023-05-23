import 'package:equatable/equatable.dart';

class Username extends Equatable {
  String? username;
  Username({required this.username}) {
    if (this.username!.length < 3 ||
        !RegExp(r'^[a-zA-Z .]+$').hasMatch(this.username!)) {
      throw Exception('Enter correct username. Eg. jeba_deju');
    }
  }

  @override
  String toString() {
    return username!;
  }

  @override
  List<Object> get props => [username!];
}
