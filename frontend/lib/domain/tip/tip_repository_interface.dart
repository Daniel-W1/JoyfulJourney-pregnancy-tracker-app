import 'package:dartz/dartz.dart';
import 'package:frontend/domain/tip/tip_domain.dart';
import 'package:frontend/domain/tip/tip_failure.dart';
import 'package:frontend/domain/tip/tip_form.dart';

abstract class TipRepositoryInterface {
  Future<Either<Tipfailure, List<TipDomain>>> getTips();
  Future<Either<Tipfailure, List<TipDomain>>> getTipsByType(String type);
  Future<Either<Tipfailure, TipDomain>> addTip(TipForm tip);
  Future<Either<Tipfailure, TipDomain>> updateTip(TipForm tip, String tipId);
  Future<Either<Tipfailure, Unit>> deleteTip(String tipId);
}
