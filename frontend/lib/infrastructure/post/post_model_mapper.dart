import '../../domain/post/post_domain.dart';
import 'post_dto.dart';

extension PostMapper on PostDto {
  PostDomain toPost() {
    return PostDomain(
      id: id,
      body: body,
      author: author,
      comments: comments,
      likes: likes,
    );
  }
}
