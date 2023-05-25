// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_like_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostLikeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String postId) like,
    required TResult Function(String postId) unlike,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String postId)? like,
    TResult? Function(String postId)? unlike,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String postId)? like,
    TResult Function(String postId)? unlike,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostLikeEventInitial value) initial,
    required TResult Function(PostLikeEventLike value) like,
    required TResult Function(PostLikeEventUnlike value) unlike,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostLikeEventInitial value)? initial,
    TResult? Function(PostLikeEventLike value)? like,
    TResult? Function(PostLikeEventUnlike value)? unlike,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostLikeEventInitial value)? initial,
    TResult Function(PostLikeEventLike value)? like,
    TResult Function(PostLikeEventUnlike value)? unlike,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostLikeEventCopyWith<$Res> {
  factory $PostLikeEventCopyWith(
          PostLikeEvent value, $Res Function(PostLikeEvent) then) =
      _$PostLikeEventCopyWithImpl<$Res, PostLikeEvent>;
}

/// @nodoc
class _$PostLikeEventCopyWithImpl<$Res, $Val extends PostLikeEvent>
    implements $PostLikeEventCopyWith<$Res> {
  _$PostLikeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PostLikeEventInitialCopyWith<$Res> {
  factory _$$PostLikeEventInitialCopyWith(_$PostLikeEventInitial value,
          $Res Function(_$PostLikeEventInitial) then) =
      __$$PostLikeEventInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PostLikeEventInitialCopyWithImpl<$Res>
    extends _$PostLikeEventCopyWithImpl<$Res, _$PostLikeEventInitial>
    implements _$$PostLikeEventInitialCopyWith<$Res> {
  __$$PostLikeEventInitialCopyWithImpl(_$PostLikeEventInitial _value,
      $Res Function(_$PostLikeEventInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PostLikeEventInitial implements PostLikeEventInitial {
  const _$PostLikeEventInitial();

  @override
  String toString() {
    return 'PostLikeEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PostLikeEventInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String postId) like,
    required TResult Function(String postId) unlike,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String postId)? like,
    TResult? Function(String postId)? unlike,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String postId)? like,
    TResult Function(String postId)? unlike,
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
    required TResult Function(PostLikeEventInitial value) initial,
    required TResult Function(PostLikeEventLike value) like,
    required TResult Function(PostLikeEventUnlike value) unlike,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostLikeEventInitial value)? initial,
    TResult? Function(PostLikeEventLike value)? like,
    TResult? Function(PostLikeEventUnlike value)? unlike,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostLikeEventInitial value)? initial,
    TResult Function(PostLikeEventLike value)? like,
    TResult Function(PostLikeEventUnlike value)? unlike,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PostLikeEventInitial implements PostLikeEvent {
  const factory PostLikeEventInitial() = _$PostLikeEventInitial;
}

/// @nodoc
abstract class _$$PostLikeEventLikeCopyWith<$Res> {
  factory _$$PostLikeEventLikeCopyWith(
          _$PostLikeEventLike value, $Res Function(_$PostLikeEventLike) then) =
      __$$PostLikeEventLikeCopyWithImpl<$Res>;
  @useResult
  $Res call({String postId});
}

/// @nodoc
class __$$PostLikeEventLikeCopyWithImpl<$Res>
    extends _$PostLikeEventCopyWithImpl<$Res, _$PostLikeEventLike>
    implements _$$PostLikeEventLikeCopyWith<$Res> {
  __$$PostLikeEventLikeCopyWithImpl(
      _$PostLikeEventLike _value, $Res Function(_$PostLikeEventLike) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
  }) {
    return _then(_$PostLikeEventLike(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PostLikeEventLike implements PostLikeEventLike {
  const _$PostLikeEventLike({required this.postId});

  @override
  final String postId;

  @override
  String toString() {
    return 'PostLikeEvent.like(postId: $postId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostLikeEventLike &&
            (identical(other.postId, postId) || other.postId == postId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostLikeEventLikeCopyWith<_$PostLikeEventLike> get copyWith =>
      __$$PostLikeEventLikeCopyWithImpl<_$PostLikeEventLike>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String postId) like,
    required TResult Function(String postId) unlike,
  }) {
    return like(postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String postId)? like,
    TResult? Function(String postId)? unlike,
  }) {
    return like?.call(postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String postId)? like,
    TResult Function(String postId)? unlike,
    required TResult orElse(),
  }) {
    if (like != null) {
      return like(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostLikeEventInitial value) initial,
    required TResult Function(PostLikeEventLike value) like,
    required TResult Function(PostLikeEventUnlike value) unlike,
  }) {
    return like(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostLikeEventInitial value)? initial,
    TResult? Function(PostLikeEventLike value)? like,
    TResult? Function(PostLikeEventUnlike value)? unlike,
  }) {
    return like?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostLikeEventInitial value)? initial,
    TResult Function(PostLikeEventLike value)? like,
    TResult Function(PostLikeEventUnlike value)? unlike,
    required TResult orElse(),
  }) {
    if (like != null) {
      return like(this);
    }
    return orElse();
  }
}

abstract class PostLikeEventLike implements PostLikeEvent {
  const factory PostLikeEventLike({required final String postId}) =
      _$PostLikeEventLike;

  String get postId;
  @JsonKey(ignore: true)
  _$$PostLikeEventLikeCopyWith<_$PostLikeEventLike> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PostLikeEventUnlikeCopyWith<$Res> {
  factory _$$PostLikeEventUnlikeCopyWith(_$PostLikeEventUnlike value,
          $Res Function(_$PostLikeEventUnlike) then) =
      __$$PostLikeEventUnlikeCopyWithImpl<$Res>;
  @useResult
  $Res call({String postId});
}

/// @nodoc
class __$$PostLikeEventUnlikeCopyWithImpl<$Res>
    extends _$PostLikeEventCopyWithImpl<$Res, _$PostLikeEventUnlike>
    implements _$$PostLikeEventUnlikeCopyWith<$Res> {
  __$$PostLikeEventUnlikeCopyWithImpl(
      _$PostLikeEventUnlike _value, $Res Function(_$PostLikeEventUnlike) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
  }) {
    return _then(_$PostLikeEventUnlike(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PostLikeEventUnlike implements PostLikeEventUnlike {
  const _$PostLikeEventUnlike({required this.postId});

  @override
  final String postId;

  @override
  String toString() {
    return 'PostLikeEvent.unlike(postId: $postId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostLikeEventUnlike &&
            (identical(other.postId, postId) || other.postId == postId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostLikeEventUnlikeCopyWith<_$PostLikeEventUnlike> get copyWith =>
      __$$PostLikeEventUnlikeCopyWithImpl<_$PostLikeEventUnlike>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String postId) like,
    required TResult Function(String postId) unlike,
  }) {
    return unlike(postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String postId)? like,
    TResult? Function(String postId)? unlike,
  }) {
    return unlike?.call(postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String postId)? like,
    TResult Function(String postId)? unlike,
    required TResult orElse(),
  }) {
    if (unlike != null) {
      return unlike(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostLikeEventInitial value) initial,
    required TResult Function(PostLikeEventLike value) like,
    required TResult Function(PostLikeEventUnlike value) unlike,
  }) {
    return unlike(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostLikeEventInitial value)? initial,
    TResult? Function(PostLikeEventLike value)? like,
    TResult? Function(PostLikeEventUnlike value)? unlike,
  }) {
    return unlike?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostLikeEventInitial value)? initial,
    TResult Function(PostLikeEventLike value)? like,
    TResult Function(PostLikeEventUnlike value)? unlike,
    required TResult orElse(),
  }) {
    if (unlike != null) {
      return unlike(this);
    }
    return orElse();
  }
}

abstract class PostLikeEventUnlike implements PostLikeEvent {
  const factory PostLikeEventUnlike({required final String postId}) =
      _$PostLikeEventUnlike;

  String get postId;
  @JsonKey(ignore: true)
  _$$PostLikeEventUnlikeCopyWith<_$PostLikeEventUnlike> get copyWith =>
      throw _privateConstructorUsedError;
}
