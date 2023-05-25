// create the appointment domain

import 'package:freezed_annotation/freezed_annotation.dart';
part 'appointment_domain.freezed.dart';
part 'appointment_domain.g.dart';


@freezed
class AppointmentDomain  with _$AppointmentDomain{

  const factory AppointmentDomain({
    required String id,
    required String title,
    required String description,
    required String date,
    required String time,
    required String user_id,
  }) = _AppointmentDomain;

  factory AppointmentDomain.fromJson(Map<String, dynamic> json) =>
      _$AppointmentDomainFromJson(json);

}
