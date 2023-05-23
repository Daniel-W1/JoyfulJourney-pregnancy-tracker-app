import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_failure.freezed.dart';

@freezed
class Notefailure with _$Notefailure {
  const factory Notefailure.serverError() = ServerError;
  const factory Notefailure.networkError() = NetworkError;
  const factory Notefailure.unauthorized() = Unauthorized;
  const factory Notefailure.notFound() = NotFound;
  const factory Notefailure.permissionDenied() = PermissionDenied;
  const factory Notefailure.forbidden() = Forbidden;
  const factory Notefailure.emptyTitleError() = EmptyTitleError;
  const factory Notefailure.emptyDescriptionError() = EmptyDescriptionError;
}