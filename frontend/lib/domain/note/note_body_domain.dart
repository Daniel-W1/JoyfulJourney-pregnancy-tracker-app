import 'package:equatable/equatable.dart';

class Notebody extends Equatable {
  String? notebody;
  Notebody({required this.notebody}) {
    if (!RegExp(r'^[a-zA-Z . _ 0-9 ]+$').hasMatch(this.notebody!)) {
      throw Exception('Enter correct medicine description');
    } else if (this.notebody!.length < 3) {
      throw Exception('Description is too short!');
    }
  }

  @override
  String toString() {
    return notebody!;
  }

  @override
  List<Object> get props => [notebody!];
}
