import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_failure.freezed.dart';

@freezed
class Postfailure with _$Postfailure {
  const factory Postfailure.serverError() = ServerError;
  const factory Postfailure.networkError() = NetworkError;
  const factory Postfailure.unauthorized() = Unauthorized;
  const factory Postfailure.notFound() = NotFound;
  const factory Postfailure.permissionDenied() = PermissionDenied;
  const factory Postfailure.forbidden() = Forbidden;
  const factory Postfailure.emptyTitleError() = EmptyTitleError;
  const factory Postfailure.emptyDescriptionError() = EmptyDescriptionError;
  const factory Postfailure.emptyauthorError() = EmptyauthorError;
  const factory Postfailure.InvalidcommentError() = InvalidcommentError;
  const factory Postfailure.InvalidlikeError() = InvalidlikeError;
}