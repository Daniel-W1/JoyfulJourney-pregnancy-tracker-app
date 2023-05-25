// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostForm {
  String get description => throw _privateConstructorUsedError;
  List<String> get comments => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostFormCopyWith<PostForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostFormCopyWith<$Res> {
  factory $PostFormCopyWith(PostForm value, $Res Function(PostForm) then) =
      _$PostFormCopyWithImpl<$Res, PostForm>;
  @useResult
  $Res call({String description, List<String> comments, int likes});
}

/// @nodoc
class _$PostFormCopyWithImpl<$Res, $Val extends PostForm>
    implements $PostFormCopyWith<$Res> {
  _$PostFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? comments = null,
    Object? likes = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<String>,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostFormCopyWith<$Res> implements $PostFormCopyWith<$Res> {
  factory _$$_PostFormCopyWith(
          _$_PostForm value, $Res Function(_$_PostForm) then) =
      __$$_PostFormCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, List<String> comments, int likes});
}

/// @nodoc
class __$$_PostFormCopyWithImpl<$Res>
    extends _$PostFormCopyWithImpl<$Res, _$_PostForm>
    implements _$$_PostFormCopyWith<$Res> {
  __$$_PostFormCopyWithImpl(
      _$_PostForm _value, $Res Function(_$_PostForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? comments = null,
    Object? likes = null,
  }) {
    return _then(_$_PostForm(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<String>,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PostForm implements _PostForm {
  _$_PostForm(
      {required this.description,
      required final List<String> comments,
      required this.likes})
      : _comments = comments;

  @override
  final String description;
  final List<String> _comments;
  @override
  List<String> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  final int likes;

  @override
  String toString() {
    return 'PostForm(description: $description, comments: $comments, likes: $likes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostForm &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            (identical(other.likes, likes) || other.likes == likes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description,
      const DeepCollectionEquality().hash(_comments), likes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostFormCopyWith<_$_PostForm> get copyWith =>
      __$$_PostFormCopyWithImpl<_$_PostForm>(this, _$identity);
}

abstract class _PostForm implements PostForm {
  factory _PostForm(
      {required final String description,
      required final List<String> comments,
      required final int likes}) = _$_PostForm;

  @override
  String get description;
  @override
  List<String> get comments;
  @override
  int get likes;
  @override
  @JsonKey(ignore: true)
  _$$_PostFormCopyWith<_$_PostForm> get copyWith =>
      throw _privateConstructorUsedError;
}
