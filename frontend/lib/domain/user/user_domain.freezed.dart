// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDomain _$UserDomainFromJson(Map<String, dynamic> json) {
  return _UserDomain.fromJson(json);
}

/// @nodoc
mixin _$UserDomain {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  List<String> get roles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDomainCopyWith<UserDomain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDomainCopyWith<$Res> {
  factory $UserDomainCopyWith(
          UserDomain value, $Res Function(UserDomain) then) =
      _$UserDomainCopyWithImpl<$Res, UserDomain>;
  @useResult
  $Res call(
      {String id,
      String username,
      String password,
      String email,
      List<String> roles});
}

/// @nodoc
class _$UserDomainCopyWithImpl<$Res, $Val extends UserDomain>
    implements $UserDomainCopyWith<$Res> {
  _$UserDomainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? password = null,
    Object? email = null,
    Object? roles = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      roles: null == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserDomainCopyWith<$Res>
    implements $UserDomainCopyWith<$Res> {
  factory _$$_UserDomainCopyWith(
          _$_UserDomain value, $Res Function(_$_UserDomain) then) =
      __$$_UserDomainCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String username,
      String password,
      String email,
      List<String> roles});
}

/// @nodoc
class __$$_UserDomainCopyWithImpl<$Res>
    extends _$UserDomainCopyWithImpl<$Res, _$_UserDomain>
    implements _$$_UserDomainCopyWith<$Res> {
  __$$_UserDomainCopyWithImpl(
      _$_UserDomain _value, $Res Function(_$_UserDomain) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? password = null,
    Object? email = null,
    Object? roles = null,
  }) {
    return _then(_$_UserDomain(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      roles: null == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDomain implements _UserDomain {
  const _$_UserDomain(
      {required this.id,
      required this.username,
      required this.password,
      required this.email,
      required final List<String> roles})
      : _roles = roles;

  factory _$_UserDomain.fromJson(Map<String, dynamic> json) =>
      _$$_UserDomainFromJson(json);

  @override
  final String id;
  @override
  final String username;
  @override
  final String password;
  @override
  final String email;
  final List<String> _roles;
  @override
  List<String> get roles {
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roles);
  }

  @override
  String toString() {
    return 'UserDomain(id: $id, username: $username, password: $password, email: $email, roles: $roles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDomain &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality().equals(other._roles, _roles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, password, email,
      const DeepCollectionEquality().hash(_roles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDomainCopyWith<_$_UserDomain> get copyWith =>
      __$$_UserDomainCopyWithImpl<_$_UserDomain>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDomainToJson(
      this,
    );
  }
}

abstract class _UserDomain implements UserDomain {
  const factory _UserDomain(
      {required final String id,
      required final String username,
      required final String password,
      required final String email,
      required final List<String> roles}) = _$_UserDomain;

  factory _UserDomain.fromJson(Map<String, dynamic> json) =
      _$_UserDomain.fromJson;

  @override
  String get id;
  @override
  String get username;
  @override
  String get password;
  @override
  String get email;
  @override
  List<String> get roles;
  @override
  @JsonKey(ignore: true)
  _$$_UserDomainCopyWith<_$_UserDomain> get copyWith =>
      throw _privateConstructorUsedError;
}
