import 'package:dartz/dartz.dart';
import 'package:frontend/domain/tip/tip_domain.dart';
import 'package:frontend/domain/tip/tip_failure.dart';
import 'package:frontend/domain/tip/tip_form.dart';
import 'package:frontend/domain/tip/tip_repository_interface.dart';
import 'package:frontend/infrastructure/tip/tip_api.dart';
import 'package:frontend/infrastructure/tip/tip_dto.dart';
import 'package:frontend/infrastructure/tip/tip_form_mapper.dart';
import 'package:frontend/infrastructure/tip/tip_mapper.dart';
import 'package:frontend/local_data/database/jj_database_helper.dart';
import 'package:frontend/util/jj_timeout_exception.dart';

class TipRepository implements TipRepositoryInterface {
  final DatabaseHelper databaseHelper = DatabaseHelper.instance;
  final TipAPI tipApi;

  TipRepository(this.tipApi);

  @override
  Future<Either<TipFailure, TipDomain>> addTip(TipForm tipForm) async {
    try {
      var tip = await tipApi.createTip(tipForm.toDto());
      await databaseHelper.addTips([tip]);
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
      await databaseHelper.updateTip(updatedTipDto.toTipEntity());
      return right(TipDomain.fromJson(updatedTipDto.toJson()));
    } on ServerError catch (e) {
      return left(TipFailure.serverError());
    } on NetworkError catch (e) {
      return left(TipFailure.networkError());
    } on Unauthorized catch (e) {
      return left(TipFailure.unauthorized());
    } on NotFound catch (e) {
      return left(TipFailure.notFound());
    } on PermissionDenied catch (e) {
      return left(TipFailure.permissionDenied());
    } on Forbidden catch (e) {
      return left(TipFailure.forbidden());
    } on EmptyTitleError catch (e) {
      return left(TipFailure.emptyTitleError());
    } on EmptyDescriptionError catch (e) {
      return left(TipFailure.emptyDescriptionError());
    } on EmptyAuthorError catch (e) {
      return left(TipFailure.emptyAuthorError());
    } on InvalidCommentError catch (e) {
      return left(TipFailure.invalidCommentError());
    } on InvalidLikeError catch (e) {
      return left(TipFailure.invalidLikeError());
    } catch (e) {
      return left(TipFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<TipFailure, TipDomain>> getTipById(String tipId) async {
    try {
      var tip = await tipApi.getOneTip(tipId);
      return right(TipDomain.fromJson(tip.toJson()));
    } on ServerError catch (e) {
      return left(TipFailure.serverError());
    } on NetworkError catch (e) {
      return left(TipFailure.networkError());
    } on Unauthorized catch (e) {
      return left(TipFailure.unauthorized());
    } on NotFound catch (e) {
      return left(TipFailure.notFound());
    } on PermissionDenied catch (e) {
      return left(TipFailure.permissionDenied());
    } on Forbidden catch (e) {
      return left(TipFailure.forbidden());
    } on EmptyTitleError catch (e) {
      return left(TipFailure.emptyTitleError());
    } on EmptyDescriptionError catch (e) {
      return left(TipFailure.emptyDescriptionError());
    } on EmptyAuthorError catch (e) {
      return left(TipFailure.emptyAuthorError());
    } on InvalidCommentError catch (e) {
      return left(TipFailure.invalidCommentError());
    } on InvalidLikeError catch (e) {
      return left(TipFailure.invalidLikeError());
    } catch (e) {
      return left(TipFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<TipFailure, Unit>> deleteTip(String tipId) async {
    try {
      await databaseHelper.removeTip(tipId);
      await tipApi.deleteTip(tipId);
      return right(unit);
    } on ServerError catch (e) {
      return left(TipFailure.serverError());
    } on NetworkError catch (e) {
      return left(TipFailure.networkError());
    } on Unauthorized catch (e) {
      return left(TipFailure.unauthorized());
    } on NotFound catch (e) {
      return left(TipFailure.notFound());
    } on PermissionDenied catch (e) {
      return left(TipFailure.permissionDenied());
    } on Forbidden catch (e) {
      return left(TipFailure.forbidden());
    } on EmptyTitleError catch (e) {
      return left(TipFailure.emptyTitleError());
    } on EmptyDescriptionError catch (e) {
      return left(TipFailure.emptyDescriptionError());
    } on EmptyAuthorError catch (e) {
      return left(TipFailure.emptyAuthorError());
    } on InvalidCommentError catch (e) {
      return left(TipFailure.invalidCommentError());
    } on InvalidLikeError catch (e) {
      return left(TipFailure.invalidLikeError());
    } catch (e) {
      return left(TipFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<TipFailure, List<TipDomain>>> getTipsByType(String type) async {
    try {
      List<TipDto> tips = await tipApi.getTipsByType(type);
      await databaseHelper.addTips(tips);

      return Right(tips.map((e) => TipDomain.fromJson(e.toJson())).toList());
    } on JJTimeoutException catch (timeout) {
      var tips = await databaseHelper.getTipsByType(type);
      if (tips.isEmpty) {
        return left(TipFailure.serverError());
      } else {
        return right(tips);
      }
    } on ServerError catch (e) {
      return left(TipFailure.serverError());
    } on NetworkError catch (e) {
      return left(TipFailure.networkError());
    } on Unauthorized catch (e) {
      return left(TipFailure.unauthorized());
    } on NotFound catch (e) {
      return left(TipFailure.notFound());
    } on PermissionDenied catch (e) {
      return left(TipFailure.permissionDenied());
    } on Forbidden catch (e) {
      return left(TipFailure.forbidden());
    } on EmptyTitleError catch (e) {
      return left(TipFailure.emptyTitleError());
    } on EmptyDescriptionError catch (e) {
      return left(TipFailure.emptyDescriptionError());
    } on EmptyAuthorError catch (e) {
      return left(TipFailure.emptyAuthorError());
    } on InvalidCommentError catch (e) {
      return left(TipFailure.invalidCommentError());
    } on InvalidLikeError catch (e) {
      return left(TipFailure.invalidLikeError());
    } catch (e) {
      return left(TipFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<TipFailure, List<TipDomain>>> getTips() async {
    try {
      List<TipDto> tips = await tipApi.getTips();
      await databaseHelper.addTips(tips);

      return Right(tips.map((e) => TipDomain.fromJson(e.toJson())).toList());
    } on JJTimeoutException catch (timeout) {
      var tips = await databaseHelper.getTips();
      if (tips.isEmpty) {
        return left(TipFailure.serverError());
      } else {
        return right(tips);
      }
    } on ServerError catch (e) {
      return left(TipFailure.serverError());
    } on NetworkError catch (e) {
      return left(TipFailure.networkError());
    } on Unauthorized catch (e) {
      return left(TipFailure.unauthorized());
    } on NotFound catch (e) {
      return left(TipFailure.notFound());
    } on PermissionDenied catch (e) {
      return left(TipFailure.permissionDenied());
    } on Forbidden catch (e) {
      return left(TipFailure.forbidden());
    } on EmptyTitleError catch (e) {
      return left(TipFailure.emptyTitleError());
    } on EmptyDescriptionError catch (e) {
      return left(TipFailure.emptyDescriptionError());
    } on EmptyAuthorError catch (e) {
      return left(TipFailure.emptyAuthorError());
    } on InvalidCommentError catch (e) {
      return left(TipFailure.invalidCommentError());
    } on InvalidLikeError catch (e) {
      return left(TipFailure.invalidLikeError());
    } catch (e) {
      return left(TipFailure.customError(e.toString()));
    }
  }
}
