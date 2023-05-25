// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_form_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommentFormDto _$CommentFormDtoFromJson(Map<String, dynamic> json) {
  return _CommentFormDto.fromJson(json);
}

/// @nodoc
mixin _$CommentFormDto {
  String get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentFormDtoCopyWith<CommentFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentFormDtoCopyWith<$Res> {
  factory $CommentFormDtoCopyWith(
          CommentFormDto value, $Res Function(CommentFormDto) then) =
      _$CommentFormDtoCopyWithImpl<$Res, CommentFormDto>;
  @useResult
  $Res call({String body});
}

/// @nodoc
class _$CommentFormDtoCopyWithImpl<$Res, $Val extends CommentFormDto>
    implements $CommentFormDtoCopyWith<$Res> {
  _$CommentFormDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommentFormDtoCopyWith<$Res>
    implements $CommentFormDtoCopyWith<$Res> {
  factory _$$_CommentFormDtoCopyWith(
          _$_CommentFormDto value, $Res Function(_$_CommentFormDto) then) =
      __$$_CommentFormDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String body});
}

/// @nodoc
class __$$_CommentFormDtoCopyWithImpl<$Res>
    extends _$CommentFormDtoCopyWithImpl<$Res, _$_CommentFormDto>
    implements _$$_CommentFormDtoCopyWith<$Res> {
  __$$_CommentFormDtoCopyWithImpl(
      _$_CommentFormDto _value, $Res Function(_$_CommentFormDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
  }) {
    return _then(_$_CommentFormDto(
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommentFormDto extends _CommentFormDto {
  const _$_CommentFormDto({required this.body}) : super._();

  factory _$_CommentFormDto.fromJson(Map<String, dynamic> json) =>
      _$$_CommentFormDtoFromJson(json);

  @override
  final String body;

  @override
  String toString() {
    return 'CommentFormDto(body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommentFormDto &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentFormDtoCopyWith<_$_CommentFormDto> get copyWith =>
      __$$_CommentFormDtoCopyWithImpl<_$_CommentFormDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentFormDtoToJson(
      this,
    );
  }
}

abstract class _CommentFormDto extends CommentFormDto {
  const factory _CommentFormDto({required final String body}) =
      _$_CommentFormDto;
  const _CommentFormDto._() : super._();

  factory _CommentFormDto.fromJson(Map<String, dynamic> json) =
      _$_CommentFormDto.fromJson;

  @override
  String get body;
  @override
  @JsonKey(ignore: true)
  _$$_CommentFormDtoCopyWith<_$_CommentFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}
