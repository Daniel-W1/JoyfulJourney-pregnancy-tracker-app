import 'package:equatable/equatable.dart';

class Notetitle extends Equatable {
  String? notetitle;
  Notetitle({required this.notetitle}) {
    if (this.notetitle!.length < 2 ||
        !RegExp(r'^[a-zA-Z . 0-9]+$').hasMatch(this.notetitle!)) {
      throw Exception('Enter correct note title');
    }
  }

  @override
  String toString() {
    return notetitle!;
  }

  @override
  List<Object> get props => [notetitle!];
}
