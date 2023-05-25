import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_failure.freezed.dart';

@freezed
class Commentfailure with _$Commentfailure {
  const factory Commentfailure.serverError() = ServerError;
  const factory Commentfailure.networkError() = NetworkError;
  const factory Commentfailure.unauthorized() = Unauthorized;
  const factory Commentfailure.notFound() = NotFound;
  const factory Commentfailure.permissionDenied() = PermissionDenied;
  const factory Commentfailure.forbidden() = Forbidden;
  const factory Commentfailure.emptyTitleError() = EmptyTitleError;
  const factory Commentfailure.emptyDescriptionError() = EmptyDescriptionError;
}