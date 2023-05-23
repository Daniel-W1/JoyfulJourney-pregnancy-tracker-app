import 'package:frontend/domain/tip/tip_body_domain.dart';
import 'package:frontend/domain/tip/tip_title_domain.dart';
import 'package:frontend/domain/tip/tip_type_domain.dart';

class TipDomain {
  // it has title, body, user_id
  // it has a constructor that takes title, body, user_id
  // it has a toString method
  // it has a props method

  Tipbody body;
  Tiptitle title;
  TipType type;

  TipDomain({
    required this.body,
    required this.title,
    required this.type,
  });

  @override
  String toString() {
    return 'NoteDomain(body: $body, title: $title, type: $type)';
  }

  @override
  List<Object> get props => [body, title, type];
}
