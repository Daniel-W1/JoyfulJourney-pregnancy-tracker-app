// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NoteEntity _$NoteEntityFromJson(Map<String, dynamic> json) {
  return _NoteEntity.fromJson(json);
}

/// @nodoc
mixin _$NoteEntity {
  String get id => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get user_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteEntityCopyWith<NoteEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteEntityCopyWith<$Res> {
  factory $NoteEntityCopyWith(
          NoteEntity value, $Res Function(NoteEntity) then) =
      _$NoteEntityCopyWithImpl<$Res, NoteEntity>;
  @useResult
  $Res call({String id, String body, String title, String user_id});
}

/// @nodoc
class _$NoteEntityCopyWithImpl<$Res, $Val extends NoteEntity>
    implements $NoteEntityCopyWith<$Res> {
  _$NoteEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$_NoteEntityCopyWith<$Res>
    implements $NoteEntityCopyWith<$Res> {
  factory _$$_NoteEntityCopyWith(
          _$_NoteEntity value, $Res Function(_$_NoteEntity) then) =
      __$$_NoteEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String body, String title, String user_id});
}

/// @nodoc
class __$$_NoteEntityCopyWithImpl<$Res>
    extends _$NoteEntityCopyWithImpl<$Res, _$_NoteEntity>
    implements _$$_NoteEntityCopyWith<$Res> {
  __$$_NoteEntityCopyWithImpl(
      _$_NoteEntity _value, $Res Function(_$_NoteEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? body = null,
    Object? title = null,
    Object? user_id = null,
  }) {
    return _then(_$_NoteEntity(
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
class _$_NoteEntity implements _NoteEntity {
  const _$_NoteEntity(
      {required this.id,
      required this.body,
      required this.title,
      required this.user_id});

  factory _$_NoteEntity.fromJson(Map<String, dynamic> json) =>
      _$$_NoteEntityFromJson(json);

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
    return 'NoteEntity(id: $id, body: $body, title: $title, user_id: $user_id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoteEntity &&
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
  _$$_NoteEntityCopyWith<_$_NoteEntity> get copyWith =>
      __$$_NoteEntityCopyWithImpl<_$_NoteEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoteEntityToJson(
      this,
    );
  }
}

abstract class _NoteEntity implements NoteEntity {
  const factory _NoteEntity(
      {required final String id,
      required final String body,
      required final String title,
      required final String user_id}) = _$_NoteEntity;

  factory _NoteEntity.fromJson(Map<String, dynamic> json) =
      _$_NoteEntity.fromJson;

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
  _$$_NoteEntityCopyWith<_$_NoteEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
