// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_create_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostCreateEvent {
  PostForm get postForm => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PostForm postForm, String postId) update,
    required TResult Function(PostForm postForm) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PostForm postForm, String postId)? update,
    TResult? Function(PostForm postForm)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PostForm postForm, String postId)? update,
    TResult Function(PostForm postForm)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostCreateUpdateEvent value) update,
    required TResult Function(PostCreateSubmitEvent value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostCreateUpdateEvent value)? update,
    TResult? Function(PostCreateSubmitEvent value)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostCreateUpdateEvent value)? update,
    TResult Function(PostCreateSubmitEvent value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostCreateEventCopyWith<PostCreateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCreateEventCopyWith<$Res> {
  factory $PostCreateEventCopyWith(
          PostCreateEvent value, $Res Function(PostCreateEvent) then) =
      _$PostCreateEventCopyWithImpl<$Res, PostCreateEvent>;
  @useResult
  $Res call({PostForm postForm});

  $PostFormCopyWith<$Res> get postForm;
}

/// @nodoc
class _$PostCreateEventCopyWithImpl<$Res, $Val extends PostCreateEvent>
    implements $PostCreateEventCopyWith<$Res> {
  _$PostCreateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postForm = null,
  }) {
    return _then(_value.copyWith(
      postForm: null == postForm
          ? _value.postForm
          : postForm // ignore: cast_nullable_to_non_nullable
              as PostForm,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PostFormCopyWith<$Res> get postForm {
    return $PostFormCopyWith<$Res>(_value.postForm, (value) {
      return _then(_value.copyWith(postForm: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostCreateUpdateEventCopyWith<$Res>
    implements $PostCreateEventCopyWith<$Res> {
  factory _$$PostCreateUpdateEventCopyWith(_$PostCreateUpdateEvent value,
          $Res Function(_$PostCreateUpdateEvent) then) =
      __$$PostCreateUpdateEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PostForm postForm, String postId});

  @override
  $PostFormCopyWith<$Res> get postForm;
}

/// @nodoc
class __$$PostCreateUpdateEventCopyWithImpl<$Res>
    extends _$PostCreateEventCopyWithImpl<$Res, _$PostCreateUpdateEvent>
    implements _$$PostCreateUpdateEventCopyWith<$Res> {
  __$$PostCreateUpdateEventCopyWithImpl(_$PostCreateUpdateEvent _value,
      $Res Function(_$PostCreateUpdateEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postForm = null,
    Object? postId = null,
  }) {
    return _then(_$PostCreateUpdateEvent(
      postForm: null == postForm
          ? _value.postForm
          : postForm // ignore: cast_nullable_to_non_nullable
              as PostForm,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PostCreateUpdateEvent implements PostCreateUpdateEvent {
  const _$PostCreateUpdateEvent({required this.postForm, required this.postId});

  @override
  final PostForm postForm;
  @override
  final String postId;

  @override
  String toString() {
    return 'PostCreateEvent.update(postForm: $postForm, postId: $postId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostCreateUpdateEvent &&
            (identical(other.postForm, postForm) ||
                other.postForm == postForm) &&
            (identical(other.postId, postId) || other.postId == postId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postForm, postId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostCreateUpdateEventCopyWith<_$PostCreateUpdateEvent> get copyWith =>
      __$$PostCreateUpdateEventCopyWithImpl<_$PostCreateUpdateEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PostForm postForm, String postId) update,
    required TResult Function(PostForm postForm) submit,
  }) {
    return update(postForm, postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PostForm postForm, String postId)? update,
    TResult? Function(PostForm postForm)? submit,
  }) {
    return update?.call(postForm, postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PostForm postForm, String postId)? update,
    TResult Function(PostForm postForm)? submit,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(postForm, postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostCreateUpdateEvent value) update,
    required TResult Function(PostCreateSubmitEvent value) submit,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostCreateUpdateEvent value)? update,
    TResult? Function(PostCreateSubmitEvent value)? submit,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostCreateUpdateEvent value)? update,
    TResult Function(PostCreateSubmitEvent value)? submit,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class PostCreateUpdateEvent implements PostCreateEvent {
  const factory PostCreateUpdateEvent(
      {required final PostForm postForm,
      required final String postId}) = _$PostCreateUpdateEvent;

  @override
  PostForm get postForm;
  String get postId;
  @override
  @JsonKey(ignore: true)
  _$$PostCreateUpdateEventCopyWith<_$PostCreateUpdateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PostCreateSubmitEventCopyWith<$Res>
    implements $PostCreateEventCopyWith<$Res> {
  factory _$$PostCreateSubmitEventCopyWith(_$PostCreateSubmitEvent value,
          $Res Function(_$PostCreateSubmitEvent) then) =
      __$$PostCreateSubmitEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PostForm postForm});

  @override
  $PostFormCopyWith<$Res> get postForm;
}

/// @nodoc
class __$$PostCreateSubmitEventCopyWithImpl<$Res>
    extends _$PostCreateEventCopyWithImpl<$Res, _$PostCreateSubmitEvent>
    implements _$$PostCreateSubmitEventCopyWith<$Res> {
  __$$PostCreateSubmitEventCopyWithImpl(_$PostCreateSubmitEvent _value,
      $Res Function(_$PostCreateSubmitEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postForm = null,
  }) {
    return _then(_$PostCreateSubmitEvent(
      postForm: null == postForm
          ? _value.postForm
          : postForm // ignore: cast_nullable_to_non_nullable
              as PostForm,
    ));
  }
}

/// @nodoc

class _$PostCreateSubmitEvent implements PostCreateSubmitEvent {
  const _$PostCreateSubmitEvent({required this.postForm});

  @override
  final PostForm postForm;

  @override
  String toString() {
    return 'PostCreateEvent.submit(postForm: $postForm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostCreateSubmitEvent &&
            (identical(other.postForm, postForm) ||
                other.postForm == postForm));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postForm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostCreateSubmitEventCopyWith<_$PostCreateSubmitEvent> get copyWith =>
      __$$PostCreateSubmitEventCopyWithImpl<_$PostCreateSubmitEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PostForm postForm, String postId) update,
    required TResult Function(PostForm postForm) submit,
  }) {
    return submit(postForm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PostForm postForm, String postId)? update,
    TResult? Function(PostForm postForm)? submit,
  }) {
    return submit?.call(postForm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PostForm postForm, String postId)? update,
    TResult Function(PostForm postForm)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(postForm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostCreateUpdateEvent value) update,
    required TResult Function(PostCreateSubmitEvent value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostCreateUpdateEvent value)? update,
    TResult? Function(PostCreateSubmitEvent value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostCreateUpdateEvent value)? update,
    TResult Function(PostCreateSubmitEvent value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class PostCreateSubmitEvent implements PostCreateEvent {
  const factory PostCreateSubmitEvent({required final PostForm postForm}) =
      _$PostCreateSubmitEvent;

  @override
  PostForm get postForm;
  @override
  @JsonKey(ignore: true)
  _$$PostCreateSubmitEventCopyWith<_$PostCreateSubmitEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
