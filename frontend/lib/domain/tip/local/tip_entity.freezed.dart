// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tip_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TipEntity _$TipEntityFromJson(Map<String, dynamic> json) {
  return _TipEntity.fromJson(json);
}

/// @nodoc
mixin _$TipEntity {
  String get body => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TipEntityCopyWith<TipEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TipEntityCopyWith<$Res> {
  factory $TipEntityCopyWith(TipEntity value, $Res Function(TipEntity) then) =
      _$TipEntityCopyWithImpl<$Res, TipEntity>;
  @useResult
  $Res call({String body, String title, String id, String type});
}

/// @nodoc
class _$TipEntityCopyWithImpl<$Res, $Val extends TipEntity>
    implements $TipEntityCopyWith<$Res> {
  _$TipEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
    Object? title = null,
    Object? id = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TipEntityCopyWith<$Res> implements $TipEntityCopyWith<$Res> {
  factory _$$_TipEntityCopyWith(
          _$_TipEntity value, $Res Function(_$_TipEntity) then) =
      __$$_TipEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String body, String title, String id, String type});
}

/// @nodoc
class __$$_TipEntityCopyWithImpl<$Res>
    extends _$TipEntityCopyWithImpl<$Res, _$_TipEntity>
    implements _$$_TipEntityCopyWith<$Res> {
  __$$_TipEntityCopyWithImpl(
      _$_TipEntity _value, $Res Function(_$_TipEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
    Object? title = null,
    Object? id = null,
    Object? type = null,
  }) {
    return _then(_$_TipEntity(
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TipEntity implements _TipEntity {
  const _$_TipEntity(
      {required this.body,
      required this.title,
      required this.id,
      required this.type});

  factory _$_TipEntity.fromJson(Map<String, dynamic> json) =>
      _$$_TipEntityFromJson(json);

  @override
  final String body;
  @override
  final String title;
  @override
  final String id;
  @override
  final String type;

  @override
  String toString() {
    return 'TipEntity(body: $body, title: $title, id: $id, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TipEntity &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, body, title, id, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TipEntityCopyWith<_$_TipEntity> get copyWith =>
      __$$_TipEntityCopyWithImpl<_$_TipEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TipEntityToJson(
      this,
    );
  }
}

abstract class _TipEntity implements TipEntity {
  const factory _TipEntity(
      {required final String body,
      required final String title,
      required final String id,
      required final String type}) = _$_TipEntity;

  factory _TipEntity.fromJson(Map<String, dynamic> json) =
      _$_TipEntity.fromJson;

  @override
  String get body;
  @override
  String get title;
  @override
  String get id;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_TipEntityCopyWith<_$_TipEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
