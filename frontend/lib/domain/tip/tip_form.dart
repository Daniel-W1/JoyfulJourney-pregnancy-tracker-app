import 'package:freezed_annotation/freezed_annotation.dart';

part 'tip_form.freezed.dart';

@freezed
class TipForm with _$TipForm {
  const factory TipForm(
      {required String title,
      required String body,
      required String type}) = _TipForm;
}