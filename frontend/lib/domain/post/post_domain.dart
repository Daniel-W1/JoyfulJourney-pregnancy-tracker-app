
class PostDomain {
  String body;
  String author;
  List<String> comment;
  int likes;
  String id;

  PostDomain({
    required this.body,
    required this.author,
    required this.comment,
    required this.likes,
    required this.id
  });

  @override
  String toString() {
    return 'PostDomain(body: $body, author: $author, comment: $comment, likes: $likes)';
  }
}
