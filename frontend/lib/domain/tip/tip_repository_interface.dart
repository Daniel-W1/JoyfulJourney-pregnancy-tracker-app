import 'package:dartz/dartz.dart';
import 'package:frontend/domain/tip/tip_domain.dart';
import 'package:frontend/domain/tip/tip_failure.dart';
import 'package:frontend/domain/tip/tip_form.dart';

abstract class TipRepositoryInterface {
  Future<Either<TipFailure, List<TipDomain>>> getTips();
  Future<Either<TipFailure, List<TipDomain>>> getTipsByType(String type);
  Future<Either<TipFailure, TipDomain>> getTipById(String id);
  Future<Either<TipFailure, TipDomain>> addTip(TipForm tip);
  Future<Either<TipFailure, TipDomain>> updateTip({required TipForm tipForm, required String tipId});
  Future<Either<TipFailure, Unit>> deleteTip(String tipId);
}
