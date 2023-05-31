import 'package:frontend/domain/post/local/post_entity.dart';

import '../../domain/post/post_domain.dart';
import 'post_dto.dart';

extension on PostDto {
  PostDto fromPost(PostEntity post) {
    return PostDto(
      id: post.id,
      body: post.body,
      author: post.author,
      comments: post.comments,
      likes: post.likes,
    );
  }

  PostEntity toPostEntity() {
    return PostEntity(
      id: id!,
      body: body,
      author: author,
      comments: comments,
      likes: likes,
    );
  }

  PostDomain fromDto(PostDto post) {
    return PostDomain(
      id: post.id!,
      body: post.body,
      author: post.author,
      comments: post.comments,
      likes: post.likes,
    );
  }
}
