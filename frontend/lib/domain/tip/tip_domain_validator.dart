import 'package:frontend/domain/tip/tip_body_domain.dart';
import 'package:frontend/domain/tip/tip_title_domain.dart';
import 'package:frontend/domain/tip/tip_type_domain.dart';

class TipDomainValidator {
  String? titleValidator(String? value) {
    try {
      Tiptitle(tip_title: value!);
      return null;
    } catch (e) {
      return e.toString().substring(10);
    }
  }

  String? bodyValidator(String? value) {
    try {
      Tipbody(tip_body: value);
      return null;
    } catch (e) {
      return e.toString().substring(10);
    }
  }

  String? tiptypeValidator(String value) {
    try {
      TipType(tip_type: value);
      return null;
    } catch (e) {
      return e.toString().substring(10);
    }
  }
}
