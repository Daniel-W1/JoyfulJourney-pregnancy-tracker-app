import 'package:frontend/domain/tip/tip_domain.dart';
import 'package:frontend/domain/tip/local/tip_entity.dart';
import 'package:frontend/infrastructure/tip/tip_dto.dart';

extension on TipDto {
  TipDto fromTipEntity(TipEntity tip) {
    return TipDto(id: tip.id, title: tip.title, body: tip.body, type: tip.type);
  }

  TipEntity toTipEntity() {
    return TipEntity(id: id, title: title, body: body, type: type);
  }

  TipDomain toTipDomain() {
    return TipDomain(id: id, title: title, body: body, type: type);
  }
}
