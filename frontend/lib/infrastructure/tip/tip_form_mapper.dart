import 'package:frontend/domain/tip/tip_form.dart';
import 'package:frontend/infrastructure/tip/tip_form_dto.dart';

extension TFMapper on TipForm {
  TipFormDto toDto() {
    return TipFormDto(
      title: title,
      type: type,
      body: body,
    );
  }
}
