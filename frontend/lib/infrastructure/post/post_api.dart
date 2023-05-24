import 'dart:convert';
import 'package:flutter/material.dart';
import '../../util/joyful_http_client.dart';

class PostFormDto {}

class PostApi {
  JoyfulHttpClient _customHttpClient = JoyfulHttpClient();

  Future<PostDto> createPost(PostFormDto postFormDto) async {
    var post = await _customHttpClient.post("post",
        body: json.encode(postFormDto.toJson()));

    if (post.statusCode == 201) {
      return PostDto.fromJson(jsonDecode(post.body));
    } else {
      throw QHttpException(json.decode(post.body)['message'] ?? "Unknown error",
          post.statusCode);
    }
  }

  Future<PostDto> updatePost(PostFormDto postFormDto) async {
    var updatedPost = await _customHttpClient.put("post",
        body: json.encode(postFormDto.toJson()));

    if (updatedPost.statusCode == 201) {
      return PostDto.fromJson(jsonDecode(updatedPost.body));
    } else {
      throw QHttpException(
          json.decode(updatedPost.body)['message'] ?? "Unknown error",
          updatedPost.statusCode);
    }
  }

  Future<void> deletePost() async {
    var response = await _customHttpClient.delete("post");

    if (response.statusCode != 204) {
      throw QHttpException(
          json.decode(response.body)['message'] ?? "Unknown error",
          response.statusCode);
    }
  }

  Future<List<PostDto>> getPosts() async {
    var posts = await _customHttpClient.get("post");

    if (posts.statusCode == 201) {
      return (jsonDecode(posts.body) as List)
          .map((e) => PostDto.fromJson(e))
          .toList();
    } else {
      throw QHttpException(
          json.decode(posts.body)['message'] ?? "Unknown error",
          posts.statusCode);
    }
  }

  Future<PostDto> getOnePost(String id) async {
    var post = await _customHttpClient.get("post/" + id);

    if (post.statusCode == 201 && post.body != null) {
      return PostDto.fromJson(jsonDecode(post.body));
    } else if (post.body == null) {
      throw QHttpException("Post not found", post.statusCode);
    } else {
      throw QHttpException(json.decode(post.body)['message'] ?? "Unknown error",
          post.statusCode);
    }
  }
}
