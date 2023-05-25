import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:frontend/infrastructure/comment/comment_dto.dart';
import 'package:frontend/infrastructure/comment/comment_form_dto.dart';
import 'package:frontend/util/custom_http_exception.dart';
import 'package:frontend/util/joyful_http_client.dart';

class CommentAPI {
  JoyfulHttpClient _customHttpClient = JoyfulHttpClient();

  Future<CommentDto> createComment(CommentFormDto commentFormDto) async {
    var comment = await _customHttpClient.post("comments",
        body: json.encode(commentFormDto.toJson()));

    if (comment.statusCode == 201) {
      return CommentDto.fromJson(jsonDecode(comment.body));
    } else {
      throw CustomHttpException(
          json.decode(comment.body)['message'] ?? "Unknown error",
          comment.statusCode);
    }
  }

  Future<CommentDto> updateComment(CommentFormDto commentFormDto) async {
    var updatedComment = await _customHttpClient.put("comments",
        body: json.encode(commentFormDto.toJson()));

    if (updatedComment.statusCode == 201) {
      return CommentDto.fromJson(jsonDecode(updatedComment.body));
    } else {
      throw CustomHttpException(
          json.decode(updatedComment.body)['message'] ?? "Unknown error",
          updatedComment.statusCode);
    }
  }

  Future<void> deleteComment() async {
    var response = await _customHttpClient.delete("comments");

    if (response.statusCode != 204) {
      throw CustomHttpException(
          json.decode(response.body)['message'] ?? "Unknown error",
          response.statusCode);
    }
  }

  Future<List<CommentDto>> getComments() async {
    var comments = await _customHttpClient.get("comments");

    if (comments.statusCode == 201) {
      return (jsonDecode(comments.body) as List)
          .map((e) => CommentDto.fromJson(e))
          .toList();
    } else {
      throw CustomHttpException(
          json.decode(comments.body)['message'] ?? "Unknown error",
          comments.statusCode);
    }
  }

  Future<CommentDto> getOneComment(String id) async {
    var comment = await _customHttpClient.get("comments/$id");

    if (comment.statusCode == 201 && comment.body != null) {
      return CommentDto.fromJson(jsonDecode(comment.body));
    } else if (comment.body == null) {
      throw CustomHttpException("Comment not found", comment.statusCode);
    } else {
      throw CustomHttpException(
          json.decode(comment.body)['message'] ?? "Unknown error",
          comment.statusCode);
    }
  }

  Future<List<CommentDto>> getCommentsByUser(String author) async {
    var comments = await _customHttpClient.get("comments/user/$author");

    if (comments.statusCode == 201) {
      return (jsonDecode(comments.body) as List)
          .map((e) => CommentDto.fromJson(e))
          .toList();
    } else {
      throw CustomHttpException(
          json.decode(comments.body)['message'] ?? "Unknown error",
          comments.statusCode);
    }
  }

  Future<List<CommentDto>> getCommentsByPost(String post_id) async {
    var comments = await _customHttpClient.get("comments/post/$post_id");

    if (comments.statusCode == 201) {
      return (jsonDecode(comments.body) as List)
          .map((e) => CommentDto.fromJson(e))
          .toList();
    } else {
      throw CustomHttpException(
          json.decode(comments.body)['message'] ?? "Unknown error",
          comments.statusCode);
    }
  }
}
