// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tip_form_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TipFormDto _$TipFormDtoFromJson(Map<String, dynamic> json) {
  return _TipFormDto.fromJson(json);
}

/// @nodoc
mixin _$TipFormDto {
  String get body => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TipFormDtoCopyWith<TipFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TipFormDtoCopyWith<$Res> {
  factory $TipFormDtoCopyWith(
          TipFormDto value, $Res Function(TipFormDto) then) =
      _$TipFormDtoCopyWithImpl<$Res, TipFormDto>;
  @useResult
  $Res call({String body, String title, String type});
}

/// @nodoc
class _$TipFormDtoCopyWithImpl<$Res, $Val extends TipFormDto>
    implements $TipFormDtoCopyWith<$Res> {
  _$TipFormDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
    Object? title = null,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TipFormDtoCopyWith<$Res>
    implements $TipFormDtoCopyWith<$Res> {
  factory _$$_TipFormDtoCopyWith(
          _$_TipFormDto value, $Res Function(_$_TipFormDto) then) =
      __$$_TipFormDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String body, String title, String type});
}

/// @nodoc
class __$$_TipFormDtoCopyWithImpl<$Res>
    extends _$TipFormDtoCopyWithImpl<$Res, _$_TipFormDto>
    implements _$$_TipFormDtoCopyWith<$Res> {
  __$$_TipFormDtoCopyWithImpl(
      _$_TipFormDto _value, $Res Function(_$_TipFormDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
    Object? title = null,
    Object? type = null,
  }) {
    return _then(_$_TipFormDto(
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
class _$_TipFormDto extends _TipFormDto {
  const _$_TipFormDto(
      {required this.body, required this.title, required this.type})
      : super._();

  factory _$_TipFormDto.fromJson(Map<String, dynamic> json) =>
      _$$_TipFormDtoFromJson(json);

  @override
  final String body;
  @override
  final String title;
  @override
  final String type;

  @override
  String toString() {
    return 'TipFormDto(body: $body, title: $title, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TipFormDto &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, body, title, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TipFormDtoCopyWith<_$_TipFormDto> get copyWith =>
      __$$_TipFormDtoCopyWithImpl<_$_TipFormDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TipFormDtoToJson(
      this,
    );
  }
}

abstract class _TipFormDto extends TipFormDto {
  const factory _TipFormDto(
      {required final String body,
      required final String title,
      required final String type}) = _$_TipFormDto;
  const _TipFormDto._() : super._();

  factory _TipFormDto.fromJson(Map<String, dynamic> json) =
      _$_TipFormDto.fromJson;

  @override
  String get body;
  @override
  String get title;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_TipFormDtoCopyWith<_$_TipFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}
