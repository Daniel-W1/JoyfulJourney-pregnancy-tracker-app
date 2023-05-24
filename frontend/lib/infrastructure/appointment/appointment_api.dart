import 'dart:convert';

import 'package:flutter/material.dart';

import '../../util/joyful_http_client.dart';

class AppointmentFormDto {}

class AppointmentAPI {
  JoyfulHttpClient _customHttpClient = JoyfulHttpClient();

  Future<AppointmentDto> createAppointment(AppointmentFormDto appointmentFormDto) async {
    var appointment = await _customHttpClient.post("appointment",
        body: json.encode(appointmentFormDto.toJson()));

    if (appointment.statusCode == 201) {
      return AppointmentDto.fromJson(jsonDecode(appointment.body));
    } else {
      throw QHttpException(
          json.decode(appointment.body)['message'] ?? "Unknown error",
          appointment.statusCode);
    }
  }

  Future<AppointmentDto> updateAppointment(AppointmentFormDto appointmentFormDto) async {
    var apppointment = await _customHttpClient.put("appointment",
        body: json.encode(appointmentFormDto.toJson()));

    if (apppointment.statusCode == 201) {
      return AppointmentDto.fromJson(jsonDecode(apppointment.body));
    } else {
      throw QHttpException(
          json.decode(apppointment.body)['message'] ?? "Unknown error",
          apppointment.statusCode);
    }
  }

  Future<void> deleteAppointment() async {
    var response = await _customHttpClient.delete("appointment");

    if (response.statusCode != 204) {
      throw QHttpException(
          json.decode(response.body)['message'] ?? "Unknown error",
          response.statusCode);
    }
  }

  Future<List<AppointmentDto>> getAppointments() async {
    var appointment = await _customHttpClient.get("appointment");

    if (appointment.statusCode == 201) {
      return (jsonDecode(appointment.body) as List)
          .map((e) => AppointmentDto.fromJson(e))
          .toList();
    } else {
      throw QHttpException(
          json.decode(appointment.body)['message'] ?? "Unknown error",
          appointment.statusCode);
    }
  }

  Future<AppointmentDto> getOneAppointment(String id) async {
    var apppointment = await _customHttpClient.get("appointment/" + id);

    if (apppointment.statusCode == 201 && apppointment.body != null) {
      return AppointmentDto.fromJson(jsonDecode(apppointment.body));
    } else if (apppointment.body == null) {
      throw QHttpException("Appointment not found", apppointment.statusCode);
    } else {
      throw QHttpException(
          json.decode(apppointment.body)['message'] ?? "Unknown error",
          apppointment.statusCode);
    }
  }
}
