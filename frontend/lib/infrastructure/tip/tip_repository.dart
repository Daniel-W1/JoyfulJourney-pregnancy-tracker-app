import 'package:dartz/dartz.dart';
import 'package:frontend/domain/tip/tip_domain.dart';
import 'package:frontend/domain/tip/tip_failure.dart';
import 'package:frontend/domain/tip/tip_form.dart';
import 'package:frontend/domain/tip/tip_repository_interface.dart';
import 'package:frontend/infrastructure/tip/tip_api.dart';
import 'package:frontend/infrastructure/tip/tip_dto.dart';
import 'package:frontend/infrastructure/tip/tip_form_mapper.dart';
import 'package:frontend/local_data/database/jj_database_helper.dart';

class TipRepository implements TipRepositoryInterface {
  final DatabaseHelper databaseHelper = DatabaseHelper.instance;
  final TipAPI tipApi;

  TipRepository(this.tipApi);

  @override
  Future<Either<TipFailure, TipDomain>> addTip(TipForm tipForm) async {
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
      var updatedTipDto = await tipApi.updateTip(tipForm.toDto(), tipId);
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
      await databaseHelper.removeTip(tipId);
      await tipApi.deleteTip(tipId);
      return right(unit);
    } catch (e) {
      return left(TipFailure.serverError());
    }
  }

  @override
  Future<Either<TipFailure, List<TipDomain>>> getTipsByType(String type) async {
    try {
      var tips = await databaseHelper.getTipsByType(type);

      if (tips.isEmpty) {
        List<TipDto> tipDto = await tipApi.getTipsByType(type);
        await databaseHelper.addTips(tipDto);
        tips = await databaseHelper.getTipsByType(type);
      }

      return Right(tips);
    } catch (e) {
      return Left(TipFailure.serverError());
    }
  }

  @override
  Future<Either<TipFailure, List<TipDomain>>> getTips() async {
    try {
      var tips = await databaseHelper.getTips();

      if (tips.isEmpty) {
        List<TipDto> tipDto = await tipApi.getTips();
        await databaseHelper.addTips(tipDto);
        tips = await databaseHelper.getTips();
      }

      return Right(tips);
    } catch (e) {
      return left(TipFailure.serverError());
    }
  }
}
