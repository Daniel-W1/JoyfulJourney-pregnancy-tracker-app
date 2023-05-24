class PostBodyDomain {
  String? postbody;
  PostBodyDomain({required this.postbody}) {
    if (!RegExp(r'^[a-zA-Z . _ 0-9 ]+$').hasMatch(this.postbody!)) {
      throw Exception('Enter correct medicine description');
    } else if (this.postbody!.length < 3) {
      throw Exception('Description is too short!');
    }
  }

  @override
  String toString() {
    return postbody!;
  }

  @override
  List<Object> get props => [postbody!];
}
