import '../../domain/post/post_domain.dart';
import 'post_dto.dart';

extension on PostDto {
  PostDomain toPostDomain() {
    return PostDomain(
      id: id,
      body: body,
      author: author,
      comments: comments,
      likes: likes,
    );
  }
}

extension on PostDomain {
  PostDto toPostDto() {
    return PostDomain(
      id: id,
      body: body,
      author: author,
      comments: comments,
      likes: likes,
    );
  }
}
