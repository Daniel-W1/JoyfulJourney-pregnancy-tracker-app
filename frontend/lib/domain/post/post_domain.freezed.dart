// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostDomain _$PostDomainFromJson(Map<String, dynamic> json) {
  return _PostDomain.fromJson(json);
}

/// @nodoc
mixin _$PostDomain {
  String get body => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  List<String> get comments => throw _privateConstructorUsedError;
  List<String> get likes => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostDomainCopyWith<PostDomain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostDomainCopyWith<$Res> {
  factory $PostDomainCopyWith(
          PostDomain value, $Res Function(PostDomain) then) =
      _$PostDomainCopyWithImpl<$Res, PostDomain>;
  @useResult
  $Res call(
      {String body,
      String author,
      List<String> comments,
      List<String> likes,
      String id});
}

/// @nodoc
class _$PostDomainCopyWithImpl<$Res, $Val extends PostDomain>
    implements $PostDomainCopyWith<$Res> {
  _$PostDomainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
    Object? author = null,
    Object? comments = null,
    Object? likes = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<String>,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostDomainCopyWith<$Res>
    implements $PostDomainCopyWith<$Res> {
  factory _$$_PostDomainCopyWith(
          _$_PostDomain value, $Res Function(_$_PostDomain) then) =
      __$$_PostDomainCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String body,
      String author,
      List<String> comments,
      List<String> likes,
      String id});
}

/// @nodoc
class __$$_PostDomainCopyWithImpl<$Res>
    extends _$PostDomainCopyWithImpl<$Res, _$_PostDomain>
    implements _$$_PostDomainCopyWith<$Res> {
  __$$_PostDomainCopyWithImpl(
      _$_PostDomain _value, $Res Function(_$_PostDomain) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
    Object? author = null,
    Object? comments = null,
    Object? likes = null,
    Object? id = null,
  }) {
    return _then(_$_PostDomain(
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<String>,
      likes: null == likes
          ? _value._likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostDomain implements _PostDomain {
  const _$_PostDomain(
      {required this.body,
      required this.author,
      required final List<String> comments,
      required final List<String> likes,
      required this.id})
      : _comments = comments,
        _likes = likes;

  factory _$_PostDomain.fromJson(Map<String, dynamic> json) =>
      _$$_PostDomainFromJson(json);

  @override
  final String body;
  @override
  final String author;
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
  final String id;

  @override
  String toString() {
    return 'PostDomain(body: $body, author: $author, comments: $comments, likes: $likes, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostDomain &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.author, author) || other.author == author) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            const DeepCollectionEquality().equals(other._likes, _likes) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      body,
      author,
      const DeepCollectionEquality().hash(_comments),
      const DeepCollectionEquality().hash(_likes),
      id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostDomainCopyWith<_$_PostDomain> get copyWith =>
      __$$_PostDomainCopyWithImpl<_$_PostDomain>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostDomainToJson(
      this,
    );
  }
}

abstract class _PostDomain implements PostDomain {
  const factory _PostDomain(
      {required final String body,
      required final String author,
      required final List<String> comments,
      required final List<String> likes,
      required final String id}) = _$_PostDomain;

  factory _PostDomain.fromJson(Map<String, dynamic> json) =
      _$_PostDomain.fromJson;

  @override
  String get body;
  @override
  String get author;
  @override
  List<String> get comments;
  @override
  List<String> get likes;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_PostDomainCopyWith<_$_PostDomain> get copyWith =>
      throw _privateConstructorUsedError;
}
