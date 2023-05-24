import 'dart:io';
import 'dart:developer' as developer;

class TipRepository implements TipRepositoryInterface {
  final TipApi tipApi;

  TipRepository(this.tipApi);

  @override
  Future<Either<Tip>> updateTip({required EditTipForm tipForm}) async {
    try {
      TipDto tipDto = await tipApi.updateTip(tipForm: tipForm);
      return Either(val: tipDto.toTip());
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log("Unexpected error while updating tip in Tip Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  @override
  Future<Either<Tip>> getTip() async {
    try {
      TipDto tipDto = await tipApi.getTip();
      return Either(val: tipDto.toTip());
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log("Unexpected error while getting tip in Tip Repo", error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  @override
  Future<Either<void>> deleteTip() async {
    try {
      await tipApi.deleteTip();
      return Either();
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log("Unexpected error while deleting tip in Tip Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }
}
