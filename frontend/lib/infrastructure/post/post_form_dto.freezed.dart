// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_form_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostFormDto _$PostFormDtoFromJson(Map<String, dynamic> json) {
  return _PostFormDto.fromJson(json);
}

/// @nodoc
mixin _$PostFormDto {
  String get body => throw _privateConstructorUsedError;
  List<String> get comments => throw _privateConstructorUsedError;
  List<String> get likes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostFormDtoCopyWith<PostFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostFormDtoCopyWith<$Res> {
  factory $PostFormDtoCopyWith(
          PostFormDto value, $Res Function(PostFormDto) then) =
      _$PostFormDtoCopyWithImpl<$Res, PostFormDto>;
  @useResult
  $Res call({String body, List<String> comments, List<String> likes});
}

/// @nodoc
class _$PostFormDtoCopyWithImpl<$Res, $Val extends PostFormDto>
    implements $PostFormDtoCopyWith<$Res> {
  _$PostFormDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
    Object? comments = null,
    Object? likes = null,
  }) {
    return _then(_value.copyWith(
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<String>,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostFormDtoCopyWith<$Res>
    implements $PostFormDtoCopyWith<$Res> {
  factory _$$_PostFormDtoCopyWith(
          _$_PostFormDto value, $Res Function(_$_PostFormDto) then) =
      __$$_PostFormDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String body, List<String> comments, List<String> likes});
}

/// @nodoc
class __$$_PostFormDtoCopyWithImpl<$Res>
    extends _$PostFormDtoCopyWithImpl<$Res, _$_PostFormDto>
    implements _$$_PostFormDtoCopyWith<$Res> {
  __$$_PostFormDtoCopyWithImpl(
      _$_PostFormDto _value, $Res Function(_$_PostFormDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
    Object? comments = null,
    Object? likes = null,
  }) {
    return _then(_$_PostFormDto(
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<String>,
      likes: null == likes
          ? _value._likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostFormDto implements _PostFormDto {
  const _$_PostFormDto(
      {required this.body,
      required final List<String> comments,
      required final List<String> likes})
      : _comments = comments,
        _likes = likes;

  factory _$_PostFormDto.fromJson(Map<String, dynamic> json) =>
      _$$_PostFormDtoFromJson(json);

  @override
  final String body;
  final List<String> _comments;
  @override
  List<String> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  final List<String> _likes;
  @override
  List<String> get likes {
    if (_likes is EqualUnmodifiableListView) return _likes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likes);
  }

  @override
  String toString() {
    return 'PostFormDto(body: $body, comments: $comments, likes: $likes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostFormDto &&
            (identical(other.body, body) || other.body == body) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            const DeepCollectionEquality().equals(other._likes, _likes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      body,
      const DeepCollectionEquality().hash(_comments),
      const DeepCollectionEquality().hash(_likes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostFormDtoCopyWith<_$_PostFormDto> get copyWith =>
      __$$_PostFormDtoCopyWithImpl<_$_PostFormDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostFormDtoToJson(
      this,
    );
  }
}

abstract class _PostFormDto implements PostFormDto {
  const factory _PostFormDto(
      {required final String body,
      required final List<String> comments,
      required final List<String> likes}) = _$_PostFormDto;

  factory _PostFormDto.fromJson(Map<String, dynamic> json) =
      _$_PostFormDto.fromJson;

  @override
  String get body;
  @override
  List<String> get comments;
  @override
  List<String> get likes;
  @override
  @JsonKey(ignore: true)
  _$$_PostFormDtoCopyWith<_$_PostFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}
