import 'package:freezed_annotation/freezed_annotation.dart';
part 'tip_failure.freezed.dart';

@freezed
class Tipfailure with _$Tipfailure {
  const factory Tipfailure.serverError() = ServerError;
  const factory Tipfailure.networkError() = NetworkError;
  const factory Tipfailure.unauthorized() = Unauthorized;
  const factory Tipfailure.notFound() = NotFound;
  const factory Tipfailure.permissionDenied() = PermissionDenied;
  const factory Tipfailure.forbidden() = Forbidden;
  const factory Tipfailure.emptyTitleError() = EmptyTitleError;
  const factory Tipfailure.emptyDescriptionError() = EmptyDescriptionError;
  const factory Tipfailure.emptyauthorError() = EmptyauthorError;
  const factory Tipfailure.InvalidcommentError() = InvalidcommentError;
  const factory Tipfailure.InvalidlikeError() = InvalidlikeError;
}