import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_failure.freezed.dart';

@freezed
class Userfailure with _$Userfailure {
  const factory Userfailure.serverError() = ServerError;
  const factory Userfailure.networkError() = NetworkError;
  const factory Userfailure.unauthorized() = Unauthorized;
  const factory Userfailure.notFound() = NotFound;
  const factory Userfailure.permissionDenied() = PermissionDenied;
  const factory Userfailure.forbidden() = Forbidden;
  const factory Userfailure.emptyTitleError() = EmptyTitleError;
  const factory Userfailure.emptyDescriptionError() = EmptyDescriptionError;
}