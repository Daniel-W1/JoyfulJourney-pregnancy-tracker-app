import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:frontend/infrastructure/tip/tip_dto.dart';
import '../../util/joyful_http_client.dart';
import '../../util/custom_http_exception.dart';

class TipFormDto {}

class TipAPI {
  JoyfulHttpClient _customHttpClient = JoyfulHttpClient();

  Future<TipDto> createTip(TipFormDto tipFormDto) async {
    var tip = await _customHttpClient.post("tips",
        body: json.encode(tipFormDto.toJson()));

    if (tip.statusCode == 201) {
      return TipDto.fromJson(jsonDecode(tip.body));
    } else {
      throw CustomHttpException(
          json.decode(tip.body)['message'] ?? "Unknown error", tip.statusCode);
    }
  }

  Future<TipDto> updateTip(TipFormDto tipFormDto) async {
    var updatedTip = await _customHttpClient.put("tips",
        body: json.encode(tipFormDto.toJson()));

    if (updatedTip.statusCode == 201) {
      return TipDto.fromJson(jsonDecode(updatedTip.body));
    } else {
      throw CustomHttpException(
          json.decode(updatedTip.body)['message'] ?? "Unknown error",
          updatedTip.statusCode);
    }
  }

  Future<void> deleteTip() async {
    var response = await _customHttpClient.delete("tips");

    if (response.statusCode != 204) {
      throw CustomHttpException(
          json.decode(response.body)['message'] ?? "Unknown error",
          response.statusCode);
    }
  }

  Future<List<TipDto>> getTips() async {
    var tips = await _customHttpClient.get("tips");

    if (tips.statusCode == 201) {
      return (jsonDecode(tips.body) as List)
          .map((e) => TipDto.fromJson(e))
          .toList();
    } else {
      throw CustomHttpException(json.decode(tips.body)['message'] ?? "Unknown error",
          tips.statusCode);
    }
  }

  Future<TipDto> getOneTip(String id) async {
    var tip = await _customHttpClient.get("tips/" + id);

    if (tip.statusCode == 201 && tip.body != null) {
      return TipDto.fromJson(jsonDecode(tip.body));
    } else if (tip.body == null) {
      throw CustomHttpException("Tip not found", tip.statusCode);
    } else {
      throw CustomHttpException(
          json.decode(tip.body)['message'] ?? "Unknown error", tip.statusCode);
    }
  }

  Future<List<TipDto>> getTipsByType(String type) async {
    var tips = await _customHttpClient.get("tips/bytype/$type");

    if (tips.statusCode == 201) {
      return (jsonDecode(tips.body) as List)
          .map((e) => TipDto.fromJson(e))
          .toList();
    } else {
      throw CustomHttpException(json.decode(tips.body)['message'] ?? "Unknown error",
          tips.statusCode);
    }
  }
}
