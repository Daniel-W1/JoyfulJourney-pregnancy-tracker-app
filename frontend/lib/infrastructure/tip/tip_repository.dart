import 'package:dartz/dartz.dart';
import 'package:frontend/domain/tip/tip_domain.dart';
import 'package:frontend/domain/tip/tip_failure.dart';
import 'package:frontend/domain/tip/tip_form.dart';
import 'package:frontend/domain/tip/tip_repository_interface.dart';
import 'package:frontend/infrastructure/tip/tip_api.dart';
import 'package:frontend/infrastructure/tip/tip_dto.dart';
import 'package:frontend/infrastructure/tip/tip_form_mapper.dart';

class TipRepository implements TipRepositoryInterface {
  final TipAPI tipApi;

  TipRepository(this.tipApi);

  @override
  Future<Either<TipFailure, TipDomain>> addTip(
      TipForm tipForm) async {
    try {
      var tip = await tipApi.createTip(tipForm.toDto());
      return right(TipDomain.fromJson(tip.toJson()));
    } catch (e) {
      return left(TipFailure.serverError());
    }
  }

  @override
  Future<Either<TipFailure, TipDomain>> updateTip(
      {required TipForm tipForm, required String tipId}) async {
    try {
      var updatedTipDto =
          await tipApi.updateTip(tipForm.toDto(), tipId);
      return right(TipDomain.fromJson(updatedTipDto.toJson()));
    } catch (e) {
      return left(TipFailure.serverError());
    }
  }
  @override
  Future<Either<TipFailure, TipDomain>> getTipById(String tipId) async {
    try {
      var tip = await tipApi.getOneTip(tipId);
      return right(TipDomain.fromJson(tip.toJson()));
    } catch (e) {
      return left(TipFailure.serverError());
    }
  }

  @override
  Future<Either<TipFailure, Unit>> deleteTip(String tipId) async {
    try {
      await tipApi.deleteTip(tipId);
      return right(unit);
    } catch (e) {
      return left(TipFailure.serverError());
    }
  }

  @override
  Future<Either<TipFailure, List<TipDomain>>> getTipsByType(
      String tipId) async {
    try {
      var tips = await tipApi.getTipsByType(tipId);
      return right(tips
          .map((TipDto tipDto) => TipDomain.fromJson(tipDto.toJson()))
          .toList());
    } catch (e) {
      return left(TipFailure.serverError());
    }
  }
  @override
  Future<Either<TipFailure, List<TipDomain>>> getTips() async {
    try {
      var tips = await tipApi.getTips();
      return right(tips
          .map((TipDto tipDto) => TipDomain.fromJson(tipDto.toJson()))
          .toList());
    } catch (e) {
      return left(TipFailure.serverError());
    }
  }

}
