import 'dart:convert';
import 'package:flutter/material.dart';
import '../../util/joyful_http_client.dart';

class CommentFormDto {}

class CommentAPI {
  JoyfulHttpClient _customHttpClient = JoyfulHttpClient();

  Future<CommentDto> createComment(CommentFormDto commentFormDto) async {
    var comment = await _customHttpClient.post("comment",
        body: json.encode(commentFormDto.toJson()));

    if (comment.statusCode == 201) {
      return CommentDto.fromJson(jsonDecode(comment.body));
    } else {
      throw QHttpException(
          json.decode(comment.body)['message'] ?? "Unknown error",
          comment.statusCode);
    }
  }

  Future<CommentDto> updateComment(CommentFormDto commentFormDto) async {
    var updatedComment = await _customHttpClient.put("comment",
        body: json.encode(commentFormDto.toJson()));

    if (updatedComment.statusCode == 201) {
      return CommentDto.fromJson(jsonDecode(updatedComment.body));
    } else {
      throw QHttpException(
          json.decode(updatedComment.body)['message'] ?? "Unknown error",
          updatedComment.statusCode);
    }
  }

  Future<void> deleteComment() async {
    var response = await _customHttpClient.delete("comment");

    if (response.statusCode != 204) {
      throw QHttpException(
          json.decode(response.body)['message'] ?? "Unknown error",
          response.statusCode);
    }
  }

  Future<List<CommentDto>> getComments() async {
    var comments = await _customHttpClient.get("comment");

    if (comments.statusCode == 201) {
      return (jsonDecode(comments.body) as List)
          .map((e) => CommentDto.fromJson(e))
          .toList();
    } else {
      throw QHttpException(
          json.decode(comments.body)['message'] ?? "Unknown error",
          comments.statusCode);
    }
  }

  Future<CommentDto> getOneComment(String id) async {
    var comment = await _customHttpClient.get("comment/" + id);

    if (comment.statusCode == 201 && comment.body != null) {
      return CommentDto.fromJson(jsonDecode(comment.body));
    } else if (comment.body == null) {
      throw QHttpException("Comment not found", comment.statusCode);
    } else {
      throw QHttpException(
          json.decode(comment.body)['message'] ?? "Unknown error",
          comment.statusCode);
    }
  }
}
