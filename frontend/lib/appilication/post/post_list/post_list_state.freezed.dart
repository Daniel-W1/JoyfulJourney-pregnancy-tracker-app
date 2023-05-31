// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PostFailure postFailure) error,
    required TResult Function() loading,
    required TResult Function(List<Post> post) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(PostFailure postFailure)? error,
    TResult? Function()? loading,
    TResult? Function(List<Post> post)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PostFailure postFailure)? error,
    TResult Function()? loading,
    TResult Function(List<Post> post)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostListStateInitial value) initial,
    required TResult Function(PostListStateError value) error,
    required TResult Function(PostListStateLoading value) loading,
    required TResult Function(PostListStateSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostListStateInitial value)? initial,
    TResult? Function(PostListStateError value)? error,
    TResult? Function(PostListStateLoading value)? loading,
    TResult? Function(PostListStateSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostListStateInitial value)? initial,
    TResult Function(PostListStateError value)? error,
    TResult Function(PostListStateLoading value)? loading,
    TResult Function(PostListStateSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostListStateCopyWith<$Res> {
  factory $PostListStateCopyWith(
          PostListState value, $Res Function(PostListState) then) =
      _$PostListStateCopyWithImpl<$Res, PostListState>;
}

/// @nodoc
class _$PostListStateCopyWithImpl<$Res, $Val extends PostListState>
    implements $PostListStateCopyWith<$Res> {
  _$PostListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PostListStateInitialCopyWith<$Res> {
  factory _$$PostListStateInitialCopyWith(_$PostListStateInitial value,
          $Res Function(_$PostListStateInitial) then) =
      __$$PostListStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PostListStateInitialCopyWithImpl<$Res>
    extends _$PostListStateCopyWithImpl<$Res, _$PostListStateInitial>
    implements _$$PostListStateInitialCopyWith<$Res> {
  __$$PostListStateInitialCopyWithImpl(_$PostListStateInitial _value,
      $Res Function(_$PostListStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PostListStateInitial implements PostListStateInitial {
  const _$PostListStateInitial();

  @override
  String toString() {
    return 'PostListState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PostListStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PostFailure postFailure) error,
    required TResult Function() loading,
    required TResult Function(List<Post> post) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(PostFailure postFailure)? error,
    TResult? Function()? loading,
    TResult? Function(List<Post> post)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PostFailure postFailure)? error,
    TResult Function()? loading,
    TResult Function(List<Post> post)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostListStateInitial value) initial,
    required TResult Function(PostListStateError value) error,
    required TResult Function(PostListStateLoading value) loading,
    required TResult Function(PostListStateSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostListStateInitial value)? initial,
    TResult? Function(PostListStateError value)? error,
    TResult? Function(PostListStateLoading value)? loading,
    TResult? Function(PostListStateSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostListStateInitial value)? initial,
    TResult Function(PostListStateError value)? error,
    TResult Function(PostListStateLoading value)? loading,
    TResult Function(PostListStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PostListStateInitial implements PostListState {
  const factory PostListStateInitial() = _$PostListStateInitial;
}

/// @nodoc
abstract class _$$PostListStateErrorCopyWith<$Res> {
  factory _$$PostListStateErrorCopyWith(_$PostListStateError value,
          $Res Function(_$PostListStateError) then) =
      __$$PostListStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({PostFailure postFailure});
}

/// @nodoc
class __$$PostListStateErrorCopyWithImpl<$Res>
    extends _$PostListStateCopyWithImpl<$Res, _$PostListStateError>
    implements _$$PostListStateErrorCopyWith<$Res> {
  __$$PostListStateErrorCopyWithImpl(
      _$PostListStateError _value, $Res Function(_$PostListStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postFailure = null,
  }) {
    return _then(_$PostListStateError(
      null == postFailure
          ? _value.postFailure
          : postFailure // ignore: cast_nullable_to_non_nullable
              as PostFailure,
    ));
  }
}

/// @nodoc

class _$PostListStateError implements PostListStateError {
  const _$PostListStateError(this.postFailure);

  @override
  final PostFailure postFailure;

  @override
  String toString() {
    return 'PostListState.error(postFailure: $postFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostListStateError &&
            (identical(other.postFailure, postFailure) ||
                other.postFailure == postFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostListStateErrorCopyWith<_$PostListStateError> get copyWith =>
      __$$PostListStateErrorCopyWithImpl<_$PostListStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PostFailure postFailure) error,
    required TResult Function() loading,
    required TResult Function(List<Post> post) success,
  }) {
    return error(postFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(PostFailure postFailure)? error,
    TResult? Function()? loading,
    TResult? Function(List<Post> post)? success,
  }) {
    return error?.call(postFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PostFailure postFailure)? error,
    TResult Function()? loading,
    TResult Function(List<Post> post)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(postFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostListStateInitial value) initial,
    required TResult Function(PostListStateError value) error,
    required TResult Function(PostListStateLoading value) loading,
    required TResult Function(PostListStateSuccess value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostListStateInitial value)? initial,
    TResult? Function(PostListStateError value)? error,
    TResult? Function(PostListStateLoading value)? loading,
    TResult? Function(PostListStateSuccess value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostListStateInitial value)? initial,
    TResult Function(PostListStateError value)? error,
    TResult Function(PostListStateLoading value)? loading,
    TResult Function(PostListStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PostListStateError implements PostListState {
  const factory PostListStateError(final PostFailure postFailure) =
      _$PostListStateError;

  PostFailure get postFailure;
  @JsonKey(ignore: true)
  _$$PostListStateErrorCopyWith<_$PostListStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PostListStateLoadingCopyWith<$Res> {
  factory _$$PostListStateLoadingCopyWith(_$PostListStateLoading value,
          $Res Function(_$PostListStateLoading) then) =
      __$$PostListStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PostListStateLoadingCopyWithImpl<$Res>
    extends _$PostListStateCopyWithImpl<$Res, _$PostListStateLoading>
    implements _$$PostListStateLoadingCopyWith<$Res> {
  __$$PostListStateLoadingCopyWithImpl(_$PostListStateLoading _value,
      $Res Function(_$PostListStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PostListStateLoading implements PostListStateLoading {
  const _$PostListStateLoading();

  @override
  String toString() {
    return 'PostListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PostListStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PostFailure postFailure) error,
    required TResult Function() loading,
    required TResult Function(List<Post> post) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(PostFailure postFailure)? error,
    TResult? Function()? loading,
    TResult? Function(List<Post> post)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PostFailure postFailure)? error,
    TResult Function()? loading,
    TResult Function(List<Post> post)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostListStateInitial value) initial,
    required TResult Function(PostListStateError value) error,
    required TResult Function(PostListStateLoading value) loading,
    required TResult Function(PostListStateSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostListStateInitial value)? initial,
    TResult? Function(PostListStateError value)? error,
    TResult? Function(PostListStateLoading value)? loading,
    TResult? Function(PostListStateSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostListStateInitial value)? initial,
    TResult Function(PostListStateError value)? error,
    TResult Function(PostListStateLoading value)? loading,
    TResult Function(PostListStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PostListStateLoading implements PostListState {
  const factory PostListStateLoading() = _$PostListStateLoading;
}

/// @nodoc
abstract class _$$PostListStateSuccessCopyWith<$Res> {
  factory _$$PostListStateSuccessCopyWith(_$PostListStateSuccess value,
          $Res Function(_$PostListStateSuccess) then) =
      __$$PostListStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Post> post});
}

/// @nodoc
class __$$PostListStateSuccessCopyWithImpl<$Res>
    extends _$PostListStateCopyWithImpl<$Res, _$PostListStateSuccess>
    implements _$$PostListStateSuccessCopyWith<$Res> {
  __$$PostListStateSuccessCopyWithImpl(_$PostListStateSuccess _value,
      $Res Function(_$PostListStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = null,
  }) {
    return _then(_$PostListStateSuccess(
      null == post
          ? _value._post
          : post // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ));
  }
}

/// @nodoc

class _$PostListStateSuccess implements PostListStateSuccess {
  const _$PostListStateSuccess(final List<Post> post) : _post = post;

  final List<Post> _post;
  @override
  List<Post> get post {
    if (_post is EqualUnmodifiableListView) return _post;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_post);
  }

  @override
  String toString() {
    return 'PostListState.success(post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostListStateSuccess &&
            const DeepCollectionEquality().equals(other._post, _post));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_post));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostListStateSuccessCopyWith<_$PostListStateSuccess> get copyWith =>
      __$$PostListStateSuccessCopyWithImpl<_$PostListStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PostFailure postFailure) error,
    required TResult Function() loading,
    required TResult Function(List<Post> post) success,
  }) {
    return success(post);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(PostFailure postFailure)? error,
    TResult? Function()? loading,
    TResult? Function(List<Post> post)? success,
  }) {
    return success?.call(post);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PostFailure postFailure)? error,
    TResult Function()? loading,
    TResult Function(List<Post> post)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostListStateInitial value) initial,
    required TResult Function(PostListStateError value) error,
    required TResult Function(PostListStateLoading value) loading,
    required TResult Function(PostListStateSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostListStateInitial value)? initial,
    TResult? Function(PostListStateError value)? error,
    TResult? Function(PostListStateLoading value)? loading,
    TResult? Function(PostListStateSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostListStateInitial value)? initial,
    TResult Function(PostListStateError value)? error,
    TResult Function(PostListStateLoading value)? loading,
    TResult Function(PostListStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class PostListStateSuccess implements PostListState {
  const factory PostListStateSuccess(final List<Post> post) =
      _$PostListStateSuccess;

  List<Post> get post;
  @JsonKey(ignore: true)
  _$$PostListStateSuccessCopyWith<_$PostListStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
