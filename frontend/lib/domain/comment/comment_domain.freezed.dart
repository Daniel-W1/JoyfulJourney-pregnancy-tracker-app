// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommentDomain _$CommentDomainFromJson(Map<String, dynamic> json) {
  return _CommentDomain.fromJson(json);
}

/// @nodoc
mixin _$CommentDomain {
  String get id => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get post_id => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentDomainCopyWith<CommentDomain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentDomainCopyWith<$Res> {
  factory $CommentDomainCopyWith(
          CommentDomain value, $Res Function(CommentDomain) then) =
      _$CommentDomainCopyWithImpl<$Res, CommentDomain>;
  @useResult
  $Res call({String id, String body, String post_id, String author});
}

/// @nodoc
class _$CommentDomainCopyWithImpl<$Res, $Val extends CommentDomain>
    implements $CommentDomainCopyWith<$Res> {
  _$CommentDomainCopyWithImpl(this._value, this._then);

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
abstract class _$$_CommentDomainCopyWith<$Res>
    implements $CommentDomainCopyWith<$Res> {
  factory _$$_CommentDomainCopyWith(
          _$_CommentDomain value, $Res Function(_$_CommentDomain) then) =
      __$$_CommentDomainCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String body, String post_id, String author});
}

/// @nodoc
class __$$_CommentDomainCopyWithImpl<$Res>
    extends _$CommentDomainCopyWithImpl<$Res, _$_CommentDomain>
    implements _$$_CommentDomainCopyWith<$Res> {
  __$$_CommentDomainCopyWithImpl(
      _$_CommentDomain _value, $Res Function(_$_CommentDomain) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? body = null,
    Object? post_id = null,
    Object? author = null,
  }) {
    return _then(_$_CommentDomain(
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
class _$_CommentDomain implements _CommentDomain {
  const _$_CommentDomain(
      {required this.id,
      required this.body,
      required this.post_id,
      required this.author});

  factory _$_CommentDomain.fromJson(Map<String, dynamic> json) =>
      _$$_CommentDomainFromJson(json);

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
    return 'CommentDomain(id: $id, body: $body, post_id: $post_id, author: $author)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommentDomain &&
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
  _$$_CommentDomainCopyWith<_$_CommentDomain> get copyWith =>
      __$$_CommentDomainCopyWithImpl<_$_CommentDomain>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentDomainToJson(
      this,
    );
  }
}

abstract class _CommentDomain implements CommentDomain {
  const factory _CommentDomain(
      {required final String id,
      required final String body,
      required final String post_id,
      required final String author}) = _$_CommentDomain;

  factory _CommentDomain.fromJson(Map<String, dynamic> json) =
      _$_CommentDomain.fromJson;

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
  _$$_CommentDomainCopyWith<_$_CommentDomain> get copyWith =>
      throw _privateConstructorUsedError;
}
