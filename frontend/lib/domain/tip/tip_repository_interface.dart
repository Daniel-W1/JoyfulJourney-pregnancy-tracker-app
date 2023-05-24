import 'package:dartz/dartz.dart';
import 'package:frontend/domain/tip/tip_domain.dart';
import 'package:frontend/domain/tip/tip_failure.dart';

abstract class TipRepository {
  Future<Either<List<TipDomain>, Tipfailure>> getTips();
  Future<void> addTip(TipDomain tip);
  Future<void> updateTip(TipDomain tip);
  Future<void> deleteTip(TipDomain tip);
}
