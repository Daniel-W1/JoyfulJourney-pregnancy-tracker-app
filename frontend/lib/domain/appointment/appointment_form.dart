import 'package:freezed_annotation/freezed_annotation.dart';
part 'appointment_form.freezed.dart';

@freezed
class AppointmentForm with _$AppointmentForm {
  factory AppointmentForm({
    required String title,
    required String description, //TODO: Change to image
    required String date,
    required String time,
  }) = _AppointmentForm;
}
