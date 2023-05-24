import 'package:equatable/equatable.dart';

class CommentBody extends Equatable {
  String? commentbody;
  CommentBody({required this.commentbody}) {
    if (!RegExp(r'^[a-zA-Z . _ 0-9 ]+$').hasMatch(this.commentbody!)) {
      throw Exception('Enter correct medicine description');
    } else if (this.commentbody!.length < 3) {
      throw Exception('Description is too short!');
    }
  }

  @override
  String toString() {
    return commentbody!;
  }

  @override
  List<Object> get props => [commentbody!];
}
