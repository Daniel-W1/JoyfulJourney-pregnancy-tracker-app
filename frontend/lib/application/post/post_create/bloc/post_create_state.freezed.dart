// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_create_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostCreateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(PostDomain post) success,
    required TResult Function(Postfailure postFailure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(PostDomain post)? success,
    TResult? Function(Postfailure postFailure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(PostDomain post)? success,
    TResult Function(Postfailure postFailure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostCreateEmptyState value) empty,
    required TResult Function(PostCreateLoadingState value) loading,
    required TResult Function(PostCreateSuccessState value) success,
    required TResult Function(PostCreateFailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostCreateEmptyState value)? empty,
    TResult? Function(PostCreateLoadingState value)? loading,
    TResult? Function(PostCreateSuccessState value)? success,
    TResult? Function(PostCreateFailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostCreateEmptyState value)? empty,
    TResult Function(PostCreateLoadingState value)? loading,
    TResult Function(PostCreateSuccessState value)? success,
    TResult Function(PostCreateFailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCreateStateCopyWith<$Res> {
  factory $PostCreateStateCopyWith(
          PostCreateState value, $Res Function(PostCreateState) then) =
      _$PostCreateStateCopyWithImpl<$Res, PostCreateState>;
}

/// @nodoc
class _$PostCreateStateCopyWithImpl<$Res, $Val extends PostCreateState>
    implements $PostCreateStateCopyWith<$Res> {
  _$PostCreateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PostCreateEmptyStateCopyWith<$Res> {
  factory _$$PostCreateEmptyStateCopyWith(_$PostCreateEmptyState value,
          $Res Function(_$PostCreateEmptyState) then) =
      __$$PostCreateEmptyStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PostCreateEmptyStateCopyWithImpl<$Res>
    extends _$PostCreateStateCopyWithImpl<$Res, _$PostCreateEmptyState>
    implements _$$PostCreateEmptyStateCopyWith<$Res> {
  __$$PostCreateEmptyStateCopyWithImpl(_$PostCreateEmptyState _value,
      $Res Function(_$PostCreateEmptyState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PostCreateEmptyState implements PostCreateEmptyState {
  const _$PostCreateEmptyState();

  @override
  String toString() {
    return 'PostCreateState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PostCreateEmptyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(PostDomain post) success,
    required TResult Function(Postfailure postFailure) failure,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(PostDomain post)? success,
    TResult? Function(Postfailure postFailure)? failure,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(PostDomain post)? success,
    TResult Function(Postfailure postFailure)? failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostCreateEmptyState value) empty,
    required TResult Function(PostCreateLoadingState value) loading,
    required TResult Function(PostCreateSuccessState value) success,
    required TResult Function(PostCreateFailureState value) failure,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostCreateEmptyState value)? empty,
    TResult? Function(PostCreateLoadingState value)? loading,
    TResult? Function(PostCreateSuccessState value)? success,
    TResult? Function(PostCreateFailureState value)? failure,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostCreateEmptyState value)? empty,
    TResult Function(PostCreateLoadingState value)? loading,
    TResult Function(PostCreateSuccessState value)? success,
    TResult Function(PostCreateFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class PostCreateEmptyState implements PostCreateState {
  const factory PostCreateEmptyState() = _$PostCreateEmptyState;
}

/// @nodoc
abstract class _$$PostCreateLoadingStateCopyWith<$Res> {
  factory _$$PostCreateLoadingStateCopyWith(_$PostCreateLoadingState value,
          $Res Function(_$PostCreateLoadingState) then) =
      __$$PostCreateLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PostCreateLoadingStateCopyWithImpl<$Res>
    extends _$PostCreateStateCopyWithImpl<$Res, _$PostCreateLoadingState>
    implements _$$PostCreateLoadingStateCopyWith<$Res> {
  __$$PostCreateLoadingStateCopyWithImpl(_$PostCreateLoadingState _value,
      $Res Function(_$PostCreateLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PostCreateLoadingState implements PostCreateLoadingState {
  const _$PostCreateLoadingState();

  @override
  String toString() {
    return 'PostCreateState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PostCreateLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(PostDomain post) success,
    required TResult Function(Postfailure postFailure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(PostDomain post)? success,
    TResult? Function(Postfailure postFailure)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(PostDomain post)? success,
    TResult Function(Postfailure postFailure)? failure,
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
    required TResult Function(PostCreateEmptyState value) empty,
    required TResult Function(PostCreateLoadingState value) loading,
    required TResult Function(PostCreateSuccessState value) success,
    required TResult Function(PostCreateFailureState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostCreateEmptyState value)? empty,
    TResult? Function(PostCreateLoadingState value)? loading,
    TResult? Function(PostCreateSuccessState value)? success,
    TResult? Function(PostCreateFailureState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostCreateEmptyState value)? empty,
    TResult Function(PostCreateLoadingState value)? loading,
    TResult Function(PostCreateSuccessState value)? success,
    TResult Function(PostCreateFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PostCreateLoadingState implements PostCreateState {
  const factory PostCreateLoadingState() = _$PostCreateLoadingState;
}

/// @nodoc
abstract class _$$PostCreateSuccessStateCopyWith<$Res> {
  factory _$$PostCreateSuccessStateCopyWith(_$PostCreateSuccessState value,
          $Res Function(_$PostCreateSuccessState) then) =
      __$$PostCreateSuccessStateCopyWithImpl<$Res>;
  @useResult
  $Res call({PostDomain post});
}

/// @nodoc
class __$$PostCreateSuccessStateCopyWithImpl<$Res>
    extends _$PostCreateStateCopyWithImpl<$Res, _$PostCreateSuccessState>
    implements _$$PostCreateSuccessStateCopyWith<$Res> {
  __$$PostCreateSuccessStateCopyWithImpl(_$PostCreateSuccessState _value,
      $Res Function(_$PostCreateSuccessState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = null,
  }) {
    return _then(_$PostCreateSuccessState(
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as PostDomain,
    ));
  }
}

/// @nodoc

class _$PostCreateSuccessState implements PostCreateSuccessState {
  const _$PostCreateSuccessState({required this.post});

  @override
  final PostDomain post;

  @override
  String toString() {
    return 'PostCreateState.success(post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostCreateSuccessState &&
            (identical(other.post, post) || other.post == post));
  }

  @override
  int get hashCode => Object.hash(runtimeType, post);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostCreateSuccessStateCopyWith<_$PostCreateSuccessState> get copyWith =>
      __$$PostCreateSuccessStateCopyWithImpl<_$PostCreateSuccessState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(PostDomain post) success,
    required TResult Function(Postfailure postFailure) failure,
  }) {
    return success(post);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(PostDomain post)? success,
    TResult? Function(Postfailure postFailure)? failure,
  }) {
    return success?.call(post);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(PostDomain post)? success,
    TResult Function(Postfailure postFailure)? failure,
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
    required TResult Function(PostCreateEmptyState value) empty,
    required TResult Function(PostCreateLoadingState value) loading,
    required TResult Function(PostCreateSuccessState value) success,
    required TResult Function(PostCreateFailureState value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostCreateEmptyState value)? empty,
    TResult? Function(PostCreateLoadingState value)? loading,
    TResult? Function(PostCreateSuccessState value)? success,
    TResult? Function(PostCreateFailureState value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostCreateEmptyState value)? empty,
    TResult Function(PostCreateLoadingState value)? loading,
    TResult Function(PostCreateSuccessState value)? success,
    TResult Function(PostCreateFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class PostCreateSuccessState implements PostCreateState {
  const factory PostCreateSuccessState({required final PostDomain post}) =
      _$PostCreateSuccessState;

  PostDomain get post;
  @JsonKey(ignore: true)
  _$$PostCreateSuccessStateCopyWith<_$PostCreateSuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PostCreateFailureStateCopyWith<$Res> {
  factory _$$PostCreateFailureStateCopyWith(_$PostCreateFailureState value,
          $Res Function(_$PostCreateFailureState) then) =
      __$$PostCreateFailureStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Postfailure postFailure});

  $PostfailureCopyWith<$Res> get postFailure;
}

/// @nodoc
class __$$PostCreateFailureStateCopyWithImpl<$Res>
    extends _$PostCreateStateCopyWithImpl<$Res, _$PostCreateFailureState>
    implements _$$PostCreateFailureStateCopyWith<$Res> {
  __$$PostCreateFailureStateCopyWithImpl(_$PostCreateFailureState _value,
      $Res Function(_$PostCreateFailureState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postFailure = null,
  }) {
    return _then(_$PostCreateFailureState(
      postFailure: null == postFailure
          ? _value.postFailure
          : postFailure // ignore: cast_nullable_to_non_nullable
              as Postfailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PostfailureCopyWith<$Res> get postFailure {
    return $PostfailureCopyWith<$Res>(_value.postFailure, (value) {
      return _then(_value.copyWith(postFailure: value));
    });
  }
}

/// @nodoc

class _$PostCreateFailureState implements PostCreateFailureState {
  const _$PostCreateFailureState({required this.postFailure});

  @override
  final Postfailure postFailure;

  @override
  String toString() {
    return 'PostCreateState.failure(postFailure: $postFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostCreateFailureState &&
            (identical(other.postFailure, postFailure) ||
                other.postFailure == postFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostCreateFailureStateCopyWith<_$PostCreateFailureState> get copyWith =>
      __$$PostCreateFailureStateCopyWithImpl<_$PostCreateFailureState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(PostDomain post) success,
    required TResult Function(Postfailure postFailure) failure,
  }) {
    return failure(postFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(PostDomain post)? success,
    TResult? Function(Postfailure postFailure)? failure,
  }) {
    return failure?.call(postFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(PostDomain post)? success,
    TResult Function(Postfailure postFailure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(postFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostCreateEmptyState value) empty,
    required TResult Function(PostCreateLoadingState value) loading,
    required TResult Function(PostCreateSuccessState value) success,
    required TResult Function(PostCreateFailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostCreateEmptyState value)? empty,
    TResult? Function(PostCreateLoadingState value)? loading,
    TResult? Function(PostCreateSuccessState value)? success,
    TResult? Function(PostCreateFailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostCreateEmptyState value)? empty,
    TResult Function(PostCreateLoadingState value)? loading,
    TResult Function(PostCreateSuccessState value)? success,
    TResult Function(PostCreateFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class PostCreateFailureState implements PostCreateState {
  const factory PostCreateFailureState(
      {required final Postfailure postFailure}) = _$PostCreateFailureState;

  Postfailure get postFailure;
  @JsonKey(ignore: true)
  _$$PostCreateFailureStateCopyWith<_$PostCreateFailureState> get copyWith =>
      throw _privateConstructorUsedError;
}
