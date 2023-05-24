import 'dart:convert';
import 'package:flutter/material.dart';
import '../../util/joyful_http_client.dart';

class TipFormDto {}

class TipAPI {
  JoyfulHttpClient _customHttpClient = JoyfulHttpClient();

  Future<TipDto> createTip(TipFormDto tipFormDto) async {
    var tip = await _customHttpClient.post("tip",
        body: json.encode(tipFormDto.toJson()));

    if (tip.statusCode == 201) {
      return TipDto.fromJson(jsonDecode(tip.body));
    } else {
      throw QHttpException(
          json.decode(tip.body)['message'] ?? "Unknown error", tip.statusCode);
    }
  }

  Future<TipDto> updateTip(TipFormDto tipFormDto) async {
    var updatedTip = await _customHttpClient.put("tip",
        body: json.encode(tipFormDto.toJson()));

    if (updatedTip.statusCode == 201) {
      return TipDto.fromJson(jsonDecode(updatedTip.body));
    } else {
      throw QHttpException(
          json.decode(updatedTip.body)['message'] ?? "Unknown error",
          updatedTip.statusCode);
    }
  }

  Future<void> deleteTip() async {
    var response = await _customHttpClient.delete("tip");

    if (response.statusCode != 204) {
      throw QHttpException(
          json.decode(response.body)['message'] ?? "Unknown error",
          response.statusCode);
    }
  }

  Future<List<TipDto>> getTips() async {
    var tips = await _customHttpClient.get("tip");

    if (tips.statusCode == 201) {
      return (jsonDecode(tips.body) as List)
          .map((e) => TipDto.fromJson(e))
          .toList();
    } else {
      throw QHttpException(json.decode(tips.body)['message'] ?? "Unknown error",
          tips.statusCode);
    }
  }

  Future<TipDto> getOneTip(String id) async {
    var tip = await _customHttpClient.get("tip/" + id);

    if (tip.statusCode == 201 && tip.body != null) {
      return TipDto.fromJson(jsonDecode(tip.body));
    } else if (tip.body == null) {
      throw QHttpException("Tip not found", tip.statusCode);
    } else {
      throw QHttpException(
          json.decode(tip.body)['message'] ?? "Unknown error", tip.statusCode);
    }
  }
}
