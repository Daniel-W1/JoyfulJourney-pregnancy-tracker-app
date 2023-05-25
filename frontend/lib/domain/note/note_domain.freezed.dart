// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NoteDomain _$NoteDomainFromJson(Map<String, dynamic> json) {
  return _NoteDomain.fromJson(json);
}

/// @nodoc
mixin _$NoteDomain {
  String get id => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get user_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteDomainCopyWith<NoteDomain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteDomainCopyWith<$Res> {
  factory $NoteDomainCopyWith(
          NoteDomain value, $Res Function(NoteDomain) then) =
      _$NoteDomainCopyWithImpl<$Res, NoteDomain>;
  @useResult
  $Res call({String id, String body, String title, String user_id});
}

/// @nodoc
class _$NoteDomainCopyWithImpl<$Res, $Val extends NoteDomain>
    implements $NoteDomainCopyWith<$Res> {
  _$NoteDomainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? body = null,
    Object? title = null,
    Object? user_id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NoteDomainCopyWith<$Res>
    implements $NoteDomainCopyWith<$Res> {
  factory _$$_NoteDomainCopyWith(
          _$_NoteDomain value, $Res Function(_$_NoteDomain) then) =
      __$$_NoteDomainCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String body, String title, String user_id});
}

/// @nodoc
class __$$_NoteDomainCopyWithImpl<$Res>
    extends _$NoteDomainCopyWithImpl<$Res, _$_NoteDomain>
    implements _$$_NoteDomainCopyWith<$Res> {
  __$$_NoteDomainCopyWithImpl(
      _$_NoteDomain _value, $Res Function(_$_NoteDomain) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? body = null,
    Object? title = null,
    Object? user_id = null,
  }) {
    return _then(_$_NoteDomain(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NoteDomain implements _NoteDomain {
  const _$_NoteDomain(
      {required this.id,
      required this.body,
      required this.title,
      required this.user_id});

  factory _$_NoteDomain.fromJson(Map<String, dynamic> json) =>
      _$$_NoteDomainFromJson(json);

  @override
  final String id;
  @override
  final String body;
  @override
  final String title;
  @override
  final String user_id;

  @override
  String toString() {
    return 'NoteDomain(id: $id, body: $body, title: $title, user_id: $user_id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoteDomain &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.user_id, user_id) || other.user_id == user_id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, body, title, user_id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoteDomainCopyWith<_$_NoteDomain> get copyWith =>
      __$$_NoteDomainCopyWithImpl<_$_NoteDomain>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoteDomainToJson(
      this,
    );
  }
}

abstract class _NoteDomain implements NoteDomain {
  const factory _NoteDomain(
      {required final String id,
      required final String body,
      required final String title,
      required final String user_id}) = _$_NoteDomain;

  factory _NoteDomain.fromJson(Map<String, dynamic> json) =
      _$_NoteDomain.fromJson;

  @override
  String get id;
  @override
  String get body;
  @override
  String get title;
  @override
  String get user_id;
  @override
  @JsonKey(ignore: true)
  _$$_NoteDomainCopyWith<_$_NoteDomain> get copyWith =>
      throw _privateConstructorUsedError;
}
