import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:frontend/infrastructure/appointment/appointment_dto.dart';
import 'package:frontend/infrastructure/appointment/appointment_form_dto.dart';
import 'package:frontend/util/jj_http_client.dart';
import 'package:frontend/util/jj_http_exception.dart';



class AppointmentAPI {
  JJHttpClient _customHttpClient = JJHttpClient();

  Future<AppointmentDto> createAppointment(AppointmentFormDto appointmentFormDto) async {
    var appointment = await _customHttpClient.post("appointment",
        body: json.encode(appointmentFormDto.toJson()));

    if (appointment.statusCode == 201) {
      return AppointmentDto.fromJson(jsonDecode(appointment.body));
    } else {
      throw JJHttpException(
          json.decode(appointment.body)['message'] ?? "Unknown error",
          appointment.statusCode);
    }
  }

  Future<AppointmentDto> updateAppointment(AppointmentFormDto appointmentFormDto, String id) async {
    var apppointment = await _customHttpClient.put("appointment/$id",
        body: json.encode(appointmentFormDto.toJson()));

    if (apppointment.statusCode == 201) {
      return AppointmentDto.fromJson(jsonDecode(apppointment.body));
    } else {
      throw JJHttpException(
          json.decode(apppointment.body)['message'] ?? "Unknown error",
          apppointment.statusCode);
    }
  }

  Future<void> deleteAppointment(String id) async {
    var response = await _customHttpClient.delete("appointment/$id");

    if (response.statusCode != 204) {
      throw JJHttpException(
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
      throw JJHttpException(
          json.decode(appointment.body)['message'] ?? "Unknown error",
          appointment.statusCode);
    }
  }

  Future<AppointmentDto> getOneAppointment(String id) async {
    var apppointment = await _customHttpClient.get("appointment/$id");

    if (apppointment.statusCode == 201 && apppointment.body != null) {
      return AppointmentDto.fromJson(jsonDecode(apppointment.body));
    } else if (apppointment.body == null) {
      throw JJHttpException("Appointment not found", apppointment.statusCode);
    } else {
      throw JJHttpException(
          json.decode(apppointment.body)['message'] ?? "Unknown error",
          apppointment.statusCode);
    }
  }

  Future<List<AppointmentDto>> getAppointmentsByUser(String author) async {
    var appointment = await _customHttpClient.get("appointment/user/$author");

    if (appointment.statusCode == 201) {
      return (jsonDecode(appointment.body) as List)
          .map((e) => AppointmentDto.fromJson(e))
          .toList();
    } else {
      throw JJHttpException(
          json.decode(appointment.body)['message'] ?? "Unknown error",
          appointment.statusCode);
    }
  }

  // Future<List<AppointmentDto>> getAppointmentsByDate(String date) async {
  //   var appointment = await _customHttpClient.get("appointment/date/$date");

  //   if (appointment.statusCode == 201) {
  //     return (jsonDecode(appointment.body) as List)
  //         .map((e) => AppointmentDto.fromJson(e))
  //         .toList();
  //   } else {
  //     throw JJHttpException(
  //         json.decode(appointment.body)['message'] ?? "Unknown error",
  //         appointment.statusCode);
  //   }
  // }

}
