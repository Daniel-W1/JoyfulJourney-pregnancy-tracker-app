class NoteDomain {
  // it has title, body, user_id
  // it has a constructor that takes title, body, user_id
  // it has a toString method
  // it has a props method

  String id;
  String body;
  String title;
  String user_id;

  NoteDomain({
    required this.id,
    required this.body,
    required this.title,
    required this.user_id,
  });

  @override
  String toString() {
    return 'NoteDomain(body: $body, title: $title, user_id: $user_id)';
  }

  @override
  List<Object> get props => [body, title, user_id];
}
