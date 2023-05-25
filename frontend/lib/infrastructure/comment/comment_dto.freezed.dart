// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommentDto _$CommentDtoFromJson(Map<String, dynamic> json) {
  return _CommentDto.fromJson(json);
}

/// @nodoc
mixin _$CommentDto {
  String get id => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get post_id => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentDtoCopyWith<CommentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentDtoCopyWith<$Res> {
  factory $CommentDtoCopyWith(
          CommentDto value, $Res Function(CommentDto) then) =
      _$CommentDtoCopyWithImpl<$Res, CommentDto>;
  @useResult
  $Res call({String id, String body, String post_id, String author});
}

/// @nodoc
class _$CommentDtoCopyWithImpl<$Res, $Val extends CommentDto>
    implements $CommentDtoCopyWith<$Res> {
  _$CommentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? body = null,
    Object? post_id = null,
    Object? author = null,
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
      post_id: null == post_id
          ? _value.post_id
          : post_id // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommentDtoCopyWith<$Res>
    implements $CommentDtoCopyWith<$Res> {
  factory _$$_CommentDtoCopyWith(
          _$_CommentDto value, $Res Function(_$_CommentDto) then) =
      __$$_CommentDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String body, String post_id, String author});
}

/// @nodoc
class __$$_CommentDtoCopyWithImpl<$Res>
    extends _$CommentDtoCopyWithImpl<$Res, _$_CommentDto>
    implements _$$_CommentDtoCopyWith<$Res> {
  __$$_CommentDtoCopyWithImpl(
      _$_CommentDto _value, $Res Function(_$_CommentDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? body = null,
    Object? post_id = null,
    Object? author = null,
  }) {
    return _then(_$_CommentDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      post_id: null == post_id
          ? _value.post_id
          : post_id // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommentDto extends _CommentDto {
  const _$_CommentDto(
      {required this.id,
      required this.body,
      required this.post_id,
      required this.author})
      : super._();

  factory _$_CommentDto.fromJson(Map<String, dynamic> json) =>
      _$$_CommentDtoFromJson(json);

  @override
  final String id;
  @override
  final String body;
  @override
  final String post_id;
  @override
  final String author;

  @override
  String toString() {
    return 'CommentDto(id: $id, body: $body, post_id: $post_id, author: $author)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommentDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.post_id, post_id) || other.post_id == post_id) &&
            (identical(other.author, author) || other.author == author));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, body, post_id, author);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentDtoCopyWith<_$_CommentDto> get copyWith =>
      __$$_CommentDtoCopyWithImpl<_$_CommentDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentDtoToJson(
      this,
    );
  }
}

abstract class _CommentDto extends CommentDto {
  const factory _CommentDto(
      {required final String id,
      required final String body,
      required final String post_id,
      required final String author}) = _$_CommentDto;
  const _CommentDto._() : super._();

  factory _CommentDto.fromJson(Map<String, dynamic> json) =
      _$_CommentDto.fromJson;

  @override
  String get id;
  @override
  String get body;
  @override
  String get post_id;
  @override
  String get author;
  @override
  @JsonKey(ignore: true)
  _$$_CommentDtoCopyWith<_$_CommentDto> get copyWith =>
      throw _privateConstructorUsedError;
}
