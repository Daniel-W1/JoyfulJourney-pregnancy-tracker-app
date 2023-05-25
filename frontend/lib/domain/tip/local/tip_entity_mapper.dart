import 'package:frontend/domain/tip/local/tip_entity.dart';
import 'package:frontend/domain/tip/tip_domain.dart';
import 'package:frontend/infrastructure/tip/tip_dto.dart';

extension TipsEntityExtensions on TipEntity {
  TipDomain toTipDomain() {
    return TipDomain(
      id: id,
      body: body,
      title: title,
      type: type,
    );
  }

  TipEntity fromTipDomain(TipDomain tip) {
    return TipEntity(
      id: tip.id,
      body: tip.body,
      title: tip.title,
      type: tip.type,
    );
  }

  TipDto toTipDto() {
    return TipDto(
      id: id,
      body: body,
      title: title,
      type: type,
    );
  }

  TipEntity fromTipDto(TipDto tipDto) {
    return TipEntity(
      id: tipDto.id,
      body: tipDto.body,
      title: tipDto.title,
      type: tipDto.type,
    );
  }
}
