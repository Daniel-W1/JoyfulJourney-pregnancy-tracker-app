import 'package:equatable/equatable.dart';

class Tiptitle extends Equatable {
  String? tip_title;
  Tiptitle({required this.tip_title}) {
    if (this.tip_title!.length < 2 ||
        !RegExp(r'^[a-zA-Z . 0-9]+$').hasMatch(this.tip_title!)) {
      throw Exception('Enter correct note title');
    }
  }

  @override
  String toString() {
    return tip_title!;
  }

  @override
  List<Object> get props => [tip_title!];
}
