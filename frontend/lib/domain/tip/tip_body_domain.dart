import 'package:equatable/equatable.dart';

class Tipbody extends Equatable {
  String? tip_body;
  Tipbody({required this.tip_body}) {
    if (!RegExp(r'^[a-zA-Z . _ 0-9 ]+$').hasMatch(this.tip_body!)) {
      throw Exception('Enter correct medicine description');
    } else if (this.tip_body!.length < 3) {
      throw Exception('Description is too short!');
    }
  }

  @override
  String toString() {
    return tip_body!;
  }

  @override
  List<Object> get props => [tip_body!];
}
