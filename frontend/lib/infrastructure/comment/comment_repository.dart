import 'dart:io';
import 'dart:developer' as developer;

class CommentRepository implements CommentRepositoryInterface {
  final CommentApi commentApi;

  CommentRepository(this.commentApi);

  @override
  Future<Either<Comment>> updateComment(
      {required EditCommentForm commentForm}) async {
    try {
      CommentDto commentDto =
          await commentApi.updateComment(commentForm: commentForm);
      return Either(val: commentDto.toComment());
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log("Unexpected error while updating comment in Comment Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  @override
  Future<Either<Comment>> getComment() async {
    try {
      CommentDto commentDto = await commentApi.getComment();
      return Either(val: commentDto.toComment());
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log("Unexpected error while getting comment in Comment Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  @override
  Future<Either<void>> deleteComment() async {
    try {
      await commentApi.deleteComment();
      return Either();
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log("Unexpected error while deleting comment in Comment Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }
}
