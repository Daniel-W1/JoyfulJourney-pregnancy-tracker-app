import 'dart:io';
import 'dart:developer' as developer;

class PostRepository implements PostRepositoryInterface {
  final PostApi postApi;

  PostRepository(this.postApi);

  @override
  Future<Either<Post>> updatePost({required EditPostForm postForm}) async {
    try {
      PostDto postDto = await postApi.updatePost(postForm: postForm);
      return Either(val: postDto.toPost());
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log("Unexpected error while updating post in Post Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  @override
  Future<Either<Post>> getPost() async {
    try {
      PostDto postDto = await postApi.getPost();
      return Either(val: postDto.toPost());
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log("Unexpected error while getting post in Post Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  @override
  Future<Either<void>> deletePost() async {
    try {
      await postApi.deletePost();
      return Either();
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log("Unexpected error while deleting post in Post Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }
}
