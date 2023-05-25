import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_domain.freezed.dart';
part 'user_domain.g.dart';

@freezed
class UserDomain with _$UserDomain {

  const factory UserDomain({
    required String id,
    required String username,
    required String password,
    required String email,
    required List<String> roles,
  }) = _UserDomain;

  factory UserDomain.fromJson(Map<String, dynamic> json) =>
      _$UserDomainFromJson(json);
}