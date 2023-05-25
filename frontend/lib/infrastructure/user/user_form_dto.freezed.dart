// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_form_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserFormDto _$UserFormDtoFromJson(Map<String, dynamic> json) {
  return _UserFormDto.fromJson(json);
}

/// @nodoc
mixin _$UserFormDto {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserFormDtoCopyWith<UserFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFormDtoCopyWith<$Res> {
  factory $UserFormDtoCopyWith(
          UserFormDto value, $Res Function(UserFormDto) then) =
      _$UserFormDtoCopyWithImpl<$Res, UserFormDto>;
  @useResult
  $Res call({String username, String password, String email});
}

/// @nodoc
class _$UserFormDtoCopyWithImpl<$Res, $Val extends UserFormDto>
    implements $UserFormDtoCopyWith<$Res> {
  _$UserFormDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserFormDtoCopyWith<$Res>
    implements $UserFormDtoCopyWith<$Res> {
  factory _$$_UserFormDtoCopyWith(
          _$_UserFormDto value, $Res Function(_$_UserFormDto) then) =
      __$$_UserFormDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String password, String email});
}

/// @nodoc
class __$$_UserFormDtoCopyWithImpl<$Res>
    extends _$UserFormDtoCopyWithImpl<$Res, _$_UserFormDto>
    implements _$$_UserFormDtoCopyWith<$Res> {
  __$$_UserFormDtoCopyWithImpl(
      _$_UserFormDto _value, $Res Function(_$_UserFormDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? email = null,
  }) {
    return _then(_$_UserFormDto(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserFormDto implements _UserFormDto {
  const _$_UserFormDto(
      {required this.username, required this.password, required this.email});

  factory _$_UserFormDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserFormDtoFromJson(json);

  @override
  final String username;
  @override
  final String password;
  @override
  final String email;

  @override
  String toString() {
    return 'UserFormDto(username: $username, password: $password, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserFormDto &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, password, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserFormDtoCopyWith<_$_UserFormDto> get copyWith =>
      __$$_UserFormDtoCopyWithImpl<_$_UserFormDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserFormDtoToJson(
      this,
    );
  }
}

abstract class _UserFormDto implements UserFormDto {
  const factory _UserFormDto(
      {required final String username,
      required final String password,
      required final String email}) = _$_UserFormDto;

  factory _UserFormDto.fromJson(Map<String, dynamic> json) =
      _$_UserFormDto.fromJson;

  @override
  String get username;
  @override
  String get password;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_UserFormDtoCopyWith<_$_UserFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}
