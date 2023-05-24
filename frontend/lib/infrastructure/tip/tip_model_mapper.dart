import '../../domain/tip/tip_domain.dart';
import 'tip_dto.dart';

extension TipMapper on TipDto {
  TipDomain toTip() {
    return TipDomain(
      id: id,
      body: body,
      title: title,
      type: type,
    );
  }
}
