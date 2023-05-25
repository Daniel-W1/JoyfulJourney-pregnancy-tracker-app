import 'package:frontend/domain/post/post_domain.dart';
import 'package:frontend/domain/post/local/post_entity.dart';
import 'package:frontend/infrastructure/post/post_dto.dart';

extension PostEntityExtensions on PostEntity {
  PostDomain toPostDomain() {
    return PostDomain(
      id: id,
      body: body,
      author: author,
      comments: comments,
      likes: likes,
    );
  }

  PostEntity fromPostDomain(PostDomain post) {
    return PostEntity(
      id: post.id,
      body: post.body,
      author: post.author,
      comments: post.comments,
      likes: post.likes,
    );
  }

  PostDto toPostDto() {
    return PostDto(
      id: id,
      body: body,
      author: author,
      comments: comments,
      likes: likes,
    );
  }

  PostEntity fromPostDto(PostDto postDto) {
    return PostEntity(
      id: postDto.id,
      body: postDto.body,
      author: postDto.author,
      comments: postDto.comments,
      likes: postDto.likes,
    );
  }
}
