import 'dart:convert';
import 'package:frontend/infrastructure/post/post_dto.dart';
import 'package:frontend/infrastructure/post/post_form_dto.dart';
import 'package:frontend/infrastructure/post/post_form_mapper.dart';
import 'package:frontend/local_data/shared_preferences/jj_shared_preferences_service.dart';
import 'package:frontend/util/jj_http_client.dart';
import 'package:frontend/util/jj_http_exception.dart';
import 'package:frontend/util/jj_timeout_exception.dart';

class PostAPI {
  JJHttpClient jjHttpClient = JJHttpClient();
  SharedPreferenceService sharedPreferences = SharedPreferenceService();

  Future<PostDto> createPost(PostFormDto postFormDto) async {
    String author = await sharedPreferences.getProfileId() ?? "";
    if (author == "") {
      throw JJHttpException("Not Logged In", 404);
    }

    var postDto = postFormDto.toAuthoredDto(author);
    var post =
        await jjHttpClient.post("post", body: json.encode(postDto.toJson()));

    if (post.statusCode == 201) {
      return PostDto.fromJson(jsonDecode(post.body));
    } else {
      throw JJHttpException(
          json.decode(post.body)['message'] ?? "Unknown error",
          post.statusCode);
    }
  }

  Future<PostDto> updatePost(PostFormDto postFormDto, String postId) async {
    String author = await sharedPreferences.getProfileId() ?? "";

    if (author == "") {
      throw JJHttpException("Not Logged In", 404);
    }

    var updatedPost = await jjHttpClient.put("post/$postId",
        body: json.encode(postFormDto.toAuthoredDto(author).toJson()));
    if (updatedPost.statusCode == 200) {
      return PostDto.fromJson(jsonDecode(updatedPost.body));
    } else {
      throw JJHttpException(
          json.decode(updatedPost.body)['message'] ?? "Unknown error",
          updatedPost.statusCode);
    }
  }

  Future<void> deletePost(String postId) async {
    var response = await jjHttpClient.delete("post/$postId");
    print(response.statusCode);
    if (response.statusCode != 200) {
      throw JJHttpException(
          json.decode(response.body)['message'] ?? "Unknown error",
          response.statusCode);
    }
  }

  Future<List<PostDto>> getPosts() async {
    try {
      var posts = await jjHttpClient.get("post");
      print(posts.statusCode);
      print(posts.body);

      if (posts.statusCode >= 200 && posts.statusCode < 300) {
        return (jsonDecode(posts.body) as List)
            .map((e) => PostDto.fromJson(e))
            .toList();
      } else {
        throw JJHttpException(
            json.decode(posts.body)['message'] ?? "Unknown error",
            posts.statusCode);
      }
    } catch (e) {
      print(e);
      throw JJTimeoutException();
    }
  }

  Future<PostDto> getOnePost(String id) async {
    var post = await jjHttpClient.get("post$id");

    if (post.statusCode == 201 && post.body != null) {
      return PostDto.fromJson(jsonDecode(post.body));
    } else if (post.body == null) {
      throw JJHttpException("Post not found", post.statusCode);
    } else {
      throw JJHttpException(
          json.decode(post.body)['message'] ?? "Unknown error",
          post.statusCode);
    }
  }

  Future<List<PostDto>> getPostByUser(String author) async {
    var posts = await jjHttpClient.get("post/author/$author");

    if (posts.statusCode == 200) {
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
    var post = await jjHttpClient.patch("post/like/$postId",
        body: json.encode({"liker": liker}));

    if (post.statusCode == 201) {
      return PostDto.fromJson(jsonDecode(post.body));
    } else {
      throw JJHttpException(
          json.decode(post.body)['message'] ?? "Unknown error",
          post.statusCode);
    }
  }
}
