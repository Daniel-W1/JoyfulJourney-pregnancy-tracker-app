class CommentDomain {
  String body;
  String post_id;
  String author;
  String id;

  CommentDomain({
    required this.id,
    required this.body,
    required this.post_id,
    required this.author,
  });

  @override
  String toString() {
    return 'CommentDomain(author: $author body: $body, post_id: $post_id)';
  }

}
