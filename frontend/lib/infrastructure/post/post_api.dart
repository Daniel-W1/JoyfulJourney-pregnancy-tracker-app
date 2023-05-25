import 'dart:convert';
import 'package:frontend/infrastructure/post/post_dto.dart';
import 'package:frontend/infrastructure/post/post_form_dto.dart';
import 'package:frontend/util/jj_http_client.dart';
import 'package:frontend/util/jj_http_exception.dart';


class PostAPI {
  JJHttpClient jjHttpClient = JJHttpClient();

  Future<PostDto> createPost(PostFormDto postFormDto) async {
    var post = await jjHttpClient.post("post",
        body: json.encode(postFormDto.toJson()));

    if (post.statusCode == 201) {
      return PostDto.fromJson(jsonDecode(post.body));
    } else {
      throw JJHttpException(json.decode(post.body)['message'] ?? "Unknown error",
          post.statusCode);
    }
  }

  Future<PostDto> updatePost(PostFormDto postFormDto, String postId) async {
    var updatedPost = await jjHttpClient.put("post/$postId",
        body: json.encode(postFormDto.toJson()));

    if (updatedPost.statusCode == 201) {
      return PostDto.fromJson(jsonDecode(updatedPost.body));
    } else {
      throw JJHttpException(
          json.decode(updatedPost.body)['message'] ?? "Unknown error",
          updatedPost.statusCode);
    }
  }

  Future<void> deletePost(String postId) async {
    var response = await jjHttpClient.delete("post/$postId");

    if (response.statusCode != 204) {
      throw JJHttpException(
          json.decode(response.body)['message'] ?? "Unknown error",
          response.statusCode);
    }
  }

  Future<List<PostDto>> getPosts() async {
    var posts = await jjHttpClient.get("post");

    if (posts.statusCode == 201) {
      return (jsonDecode(posts.body) as List)
          .map((e) => PostDto.fromJson(e))
          .toList();
    } else {
      throw JJHttpException(
          json.decode(posts.body)['message'] ?? "Unknown error",
          posts.statusCode);
    }
  }

  Future<PostDto> getOnePost(String id) async {
    var post = await jjHttpClient.get("post$id");

    if (post.statusCode == 201 && post.body != null) {
      return PostDto.fromJson(jsonDecode(post.body));
    } else if (post.body == null) {
      throw JJHttpException("Post not found", post.statusCode);
    } else {
      throw JJHttpException(json.decode(post.body)['message'] ?? "Unknown error",
          post.statusCode);
    }
  }

  Future<List<PostDto>> getPostByUser(String author) async {
    var posts = await jjHttpClient.get("post/user/$author");

    if (posts.statusCode == 201) {
      return (jsonDecode(posts.body) as List)
          .map((e) => PostDto.fromJson(e))
          .toList();
    } else {
      throw JJHttpException(
          json.decode(posts.body)['message'] ?? "Unknown error",
          posts.statusCode);
    }
  }

  Future<PostDto> changeLike(String liker, String postId) async {
    var post = await jjHttpClient.patch("post/like/$postId", body: json.encode({"liker": liker}));

    if (post.statusCode == 201) {
      return PostDto.fromJson(jsonDecode(post.body));
    } else {
      throw JJHttpException(json.decode(post.body)['message'] ?? "Unknown error",
          post.statusCode);
    }
  }
}
