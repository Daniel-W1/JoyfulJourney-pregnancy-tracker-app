// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tip_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TipDto _$TipDtoFromJson(Map<String, dynamic> json) {
  return _TipDto.fromJson(json);
}

/// @nodoc
mixin _$TipDto {
  String get id => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TipDtoCopyWith<TipDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TipDtoCopyWith<$Res> {
  factory $TipDtoCopyWith(TipDto value, $Res Function(TipDto) then) =
      _$TipDtoCopyWithImpl<$Res, TipDto>;
  @useResult
  $Res call({String id, String body, String title, String type});
}

/// @nodoc
class _$TipDtoCopyWithImpl<$Res, $Val extends TipDto>
    implements $TipDtoCopyWith<$Res> {
  _$TipDtoCopyWithImpl(this._value, this._then);

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
    Object? type = null,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TipDtoCopyWith<$Res> implements $TipDtoCopyWith<$Res> {
  factory _$$_TipDtoCopyWith(_$_TipDto value, $Res Function(_$_TipDto) then) =
      __$$_TipDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String body, String title, String type});
}

/// @nodoc
class __$$_TipDtoCopyWithImpl<$Res>
    extends _$TipDtoCopyWithImpl<$Res, _$_TipDto>
    implements _$$_TipDtoCopyWith<$Res> {
  __$$_TipDtoCopyWithImpl(_$_TipDto _value, $Res Function(_$_TipDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? body = null,
    Object? title = null,
    Object? type = null,
  }) {
    return _then(_$_TipDto(
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TipDto extends _TipDto {
  const _$_TipDto(
      {required this.id,
      required this.body,
      required this.title,
      required this.type})
      : super._();

  factory _$_TipDto.fromJson(Map<String, dynamic> json) =>
      _$$_TipDtoFromJson(json);

  @override
  final String id;
  @override
  final String body;
  @override
  final String title;
  @override
  final String type;

  @override
  String toString() {
    return 'TipDto(id: $id, body: $body, title: $title, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TipDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, body, title, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TipDtoCopyWith<_$_TipDto> get copyWith =>
      __$$_TipDtoCopyWithImpl<_$_TipDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TipDtoToJson(
      this,
    );
  }
}

abstract class _TipDto extends TipDto {
  const factory _TipDto(
      {required final String id,
      required final String body,
      required final String title,
      required final String type}) = _$_TipDto;
  const _TipDto._() : super._();

  factory _TipDto.fromJson(Map<String, dynamic> json) = _$_TipDto.fromJson;

  @override
  String get id;
  @override
  String get body;
  @override
  String get title;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_TipDtoCopyWith<_$_TipDto> get copyWith =>
      throw _privateConstructorUsedError;
}
