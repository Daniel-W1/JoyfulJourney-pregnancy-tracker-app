class TipDomain {
  // it has title, body, user_id
  // it has a constructor that takes title, body, user_id
  // it has a toString method
  // it has a props method

  String body;
  String title;
  String type;
  String id;

  TipDomain({
    required this.body,
    required this.title,
    required this.id,
    required this.type,
  });

  @override
  String toString() {
    return 'NoteDomain(body: $body, title: $title, type: $type)';
  }

  @override
  List<Object> get props => [body, title, type];
}
