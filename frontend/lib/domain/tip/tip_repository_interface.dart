import 'package:frontend/domain/tip/tip_domain.dart';

abstract class TipRepository {
  Future<Either<List<TipDomain>, Tipfailure>> getTips();
  Future<void> addTip(TipDomain tip);
  Future<void> updateTip(TipDomain tip);
  Future<void> deleteTip(TipDomain tip);
}
