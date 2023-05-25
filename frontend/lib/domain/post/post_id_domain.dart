import 'package:equatable/equatable.dart';

class PostIdDomain extends Equatable {
  String? post_id;

  // check the validity of the user_id
  PostIdDomain({required this.post_id}) {
    if (this.post_id!.length < 3 ||
        !RegExp(r'^[a-zA-Z .]+$').hasMatch(this.post_id!)) {
      throw Exception('Enter correct post_id');
    }
  }

  @override
  String toString() {
    return post_id!;
  }

  @override
  List<Object> get props => [post_id!];
}
