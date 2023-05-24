import 'package:equatable/equatable.dart';

class Postid extends Equatable {
  String? user_id;

  // check the validity of the user_id
  Postid({required this.user_id}) {
    if (this.user_id!.length < 3 ||
        !RegExp(r'^[a-zA-Z .]+$').hasMatch(this.user_id!)) {
      throw Exception('Enter correct user_id');
    }
  }

  @override
  String toString() {
    return user_id!;
  }

  @override
  List<Object> get props => [user_id!];
}
