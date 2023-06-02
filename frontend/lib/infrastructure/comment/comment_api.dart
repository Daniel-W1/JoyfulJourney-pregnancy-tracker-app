import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:frontend/infrastructure/comment/comment_dto.dart';
import 'package:frontend/infrastructure/comment/comment_form_dto.dart';
import 'package:frontend/infrastructure/comment/comment_form_mapper.dart';
import 'package:frontend/local_data/shared_preferences/jj_shared_preferences_service.dart';
import 'package:frontend/util/jj_http_client.dart';
import 'package:frontend/util/jj_http_exception.dart';
import 'package:frontend/util/jj_timeout_exception.dart';

class CommentAPI {
  JJHttpClient _customHttpClient = JJHttpClient();
  SharedPreferenceService _sharedPreferenceService = SharedPreferenceService();

  Future<CommentDto> createComment(CommentFormDto commentFormDto) async {
    String author = await _sharedPreferenceService.getProfileId() ?? "";

    if (author == "") {
      throw JJHttpException("Not Logged In", 404);
    }
    print('post comment called');
    var comment = await _customHttpClient.post("comments",
        body: json.encode(commentFormDto.toAuthoredDto(author).toJson()));

    print(comment.statusCode);
    if (comment.statusCode == 201) {
      return CommentDto.fromJson(jsonDecode(comment.body));
    } else {
      throw JJHttpException(
          json.decode(comment.body)['message'] ?? "Unknown error",
          comment.statusCode);
    }
  }

  Future<CommentDto> updateComment(
      CommentFormDto commentFormDto, String id) async {
    var updatedComment = await _customHttpClient.put("comments/$id",
        body: json.encode(commentFormDto.toJson()));

    if (updatedComment.statusCode == 201) {
      return CommentDto.fromJson(jsonDecode(updatedComment.body));
    } else {
      throw JJHttpException(
          json.decode(updatedComment.body)['message'] ?? "Unknown error",
          updatedComment.statusCode);
    }
  }

  Future<void> deleteComment(String id) async {
    var response = await _customHttpClient.delete("comments/$id");

    if (response.statusCode != 204) {
      throw JJHttpException(
          json.decode(response.body)['message'] ?? "Unknown error",
          response.statusCode);
    }
  }

  Future<List<CommentDto>> getComments() async {
    var comments = await _customHttpClient.get("comments");

    print(comments.statusCode);
    if (comments.statusCode == 201) {
      return (jsonDecode(comments.body) as List)
          .map((e) => CommentDto.fromJson(e))
          .toList();
    } else {
      throw JJHttpException(
          json.decode(comments.body)['message'] ?? "Unknown error",
          comments.statusCode);
    }
  }

  Future<CommentDto> getOneComment(String id) async {
    var comment = await _customHttpClient.get("comments/$id");

    if (comment.statusCode == 201 && comment.body != null) {
      return CommentDto.fromJson(jsonDecode(comment.body));
    } else if (comment.body == null) {
      throw JJHttpException("Comment not found", comment.statusCode);
    } else {
      throw JJHttpException(
          json.decode(comment.body)['message'] ?? "Unknown error",
          comment.statusCode);
    }
  }

  Future<List<CommentDto>> getCommentsByUser(String author) async {
    try {
      var comments = await _customHttpClient
          .get("comments/user/$author")
          .timeout(jjTimeout);

      if (comments.statusCode == 200) {
        return (jsonDecode(comments.body) as List)
            .map((e) => CommentDto.fromJson(e))
            .toList();
      } else {
        throw JJHttpException(
            json.decode(comments.body)['message'] ?? "Unknown error",
            comments.statusCode);
      }
    } catch (e) {
      throw JJTimeoutException();
    }
  }

  Future<List<CommentDto>> getCommentsByPost(String postId) async {
    try {
      var comments = await _customHttpClient
          .get("comments/post/$postId")
          .timeout(jjTimeout);

      if (comments.statusCode == 201) {
        return (jsonDecode(comments.body) as List)
            .map((e) => CommentDto.fromJson(e))
            .toList();
      } else {
        throw JJHttpException(
            json.decode(comments.body)['message'] ?? "Unknown error",
            comments.statusCode);
      }
    } catch (e) {
      throw JJTimeoutException();
    }
  }
}
