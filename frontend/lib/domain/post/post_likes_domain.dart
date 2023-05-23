class PostLikesDomain {
  // iterate through the array and check the validity of each ids
  //string array of user_id
  List<String> user_id;

  PostLikesDomain({
    required this.user_id,
  }) {
    for (int i = 0; i < user_id.length; i++) {
      if (this.user_id[i].length < 3 ||
          !RegExp(r'^[a-zA-Z .]+$').hasMatch(this.user_id[i])) {
        throw Exception('Enter correct user_id');
      }
    }
  }

  @override
  String toString() {
    return user_id.toString();
  }

  // @override
  // List<Object> get props => [user_id];
}
