// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CommentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CommentDomain comment) success,
    required TResult Function(List<CommentDomain> comments) successMultiple,
    required TResult Function(Commentfailure failure) failure,
    required TResult Function() deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CommentDomain comment)? success,
    TResult? Function(List<CommentDomain> comments)? successMultiple,
    TResult? Function(Commentfailure failure)? failure,
    TResult? Function()? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CommentDomain comment)? success,
    TResult Function(List<CommentDomain> comments)? successMultiple,
    TResult Function(Commentfailure failure)? failure,
    TResult Function()? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommentStateInitial value) initial,
    required TResult Function(CommentStateLoading value) loading,
    required TResult Function(CommentStateSuccess value) success,
    required TResult Function(CommentStateSuccessMultiple value)
        successMultiple,
    required TResult Function(CommentStateFailure value) failure,
    required TResult Function(CommentStateDeleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CommentStateInitial value)? initial,
    TResult? Function(CommentStateLoading value)? loading,
    TResult? Function(CommentStateSuccess value)? success,
    TResult? Function(CommentStateSuccessMultiple value)? successMultiple,
    TResult? Function(CommentStateFailure value)? failure,
    TResult? Function(CommentStateDeleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommentStateInitial value)? initial,
    TResult Function(CommentStateLoading value)? loading,
    TResult Function(CommentStateSuccess value)? success,
    TResult Function(CommentStateSuccessMultiple value)? successMultiple,
    TResult Function(CommentStateFailure value)? failure,
    TResult Function(CommentStateDeleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentStateCopyWith<$Res> {
  factory $CommentStateCopyWith(
          CommentState value, $Res Function(CommentState) then) =
      _$CommentStateCopyWithImpl<$Res, CommentState>;
}

/// @nodoc
class _$CommentStateCopyWithImpl<$Res, $Val extends CommentState>
    implements $CommentStateCopyWith<$Res> {
  _$CommentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CommentStateInitialCopyWith<$Res> {
  factory _$$CommentStateInitialCopyWith(_$CommentStateInitial value,
          $Res Function(_$CommentStateInitial) then) =
      __$$CommentStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CommentStateInitialCopyWithImpl<$Res>
    extends _$CommentStateCopyWithImpl<$Res, _$CommentStateInitial>
    implements _$$CommentStateInitialCopyWith<$Res> {
  __$$CommentStateInitialCopyWithImpl(
      _$CommentStateInitial _value, $Res Function(_$CommentStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CommentStateInitial implements CommentStateInitial {
  const _$CommentStateInitial();

  @override
  String toString() {
    return 'CommentState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CommentStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CommentDomain comment) success,
    required TResult Function(List<CommentDomain> comments) successMultiple,
    required TResult Function(Commentfailure failure) failure,
    required TResult Function() deleted,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CommentDomain comment)? success,
    TResult? Function(List<CommentDomain> comments)? successMultiple,
    TResult? Function(Commentfailure failure)? failure,
    TResult? Function()? deleted,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CommentDomain comment)? success,
    TResult Function(List<CommentDomain> comments)? successMultiple,
    TResult Function(Commentfailure failure)? failure,
    TResult Function()? deleted,
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
    required TResult Function(CommentStateInitial value) initial,
    required TResult Function(CommentStateLoading value) loading,
    required TResult Function(CommentStateSuccess value) success,
    required TResult Function(CommentStateSuccessMultiple value)
        successMultiple,
    required TResult Function(CommentStateFailure value) failure,
    required TResult Function(CommentStateDeleted value) deleted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CommentStateInitial value)? initial,
    TResult? Function(CommentStateLoading value)? loading,
    TResult? Function(CommentStateSuccess value)? success,
    TResult? Function(CommentStateSuccessMultiple value)? successMultiple,
    TResult? Function(CommentStateFailure value)? failure,
    TResult? Function(CommentStateDeleted value)? deleted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommentStateInitial value)? initial,
    TResult Function(CommentStateLoading value)? loading,
    TResult Function(CommentStateSuccess value)? success,
    TResult Function(CommentStateSuccessMultiple value)? successMultiple,
    TResult Function(CommentStateFailure value)? failure,
    TResult Function(CommentStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommentStateInitial implements CommentState {
  const factory CommentStateInitial() = _$CommentStateInitial;
}

/// @nodoc
abstract class _$$CommentStateLoadingCopyWith<$Res> {
  factory _$$CommentStateLoadingCopyWith(_$CommentStateLoading value,
          $Res Function(_$CommentStateLoading) then) =
      __$$CommentStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CommentStateLoadingCopyWithImpl<$Res>
    extends _$CommentStateCopyWithImpl<$Res, _$CommentStateLoading>
    implements _$$CommentStateLoadingCopyWith<$Res> {
  __$$CommentStateLoadingCopyWithImpl(
      _$CommentStateLoading _value, $Res Function(_$CommentStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CommentStateLoading implements CommentStateLoading {
  const _$CommentStateLoading();

  @override
  String toString() {
    return 'CommentState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CommentStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CommentDomain comment) success,
    required TResult Function(List<CommentDomain> comments) successMultiple,
    required TResult Function(Commentfailure failure) failure,
    required TResult Function() deleted,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CommentDomain comment)? success,
    TResult? Function(List<CommentDomain> comments)? successMultiple,
    TResult? Function(Commentfailure failure)? failure,
    TResult? Function()? deleted,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CommentDomain comment)? success,
    TResult Function(List<CommentDomain> comments)? successMultiple,
    TResult Function(Commentfailure failure)? failure,
    TResult Function()? deleted,
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
    required TResult Function(CommentStateInitial value) initial,
    required TResult Function(CommentStateLoading value) loading,
    required TResult Function(CommentStateSuccess value) success,
    required TResult Function(CommentStateSuccessMultiple value)
        successMultiple,
    required TResult Function(CommentStateFailure value) failure,
    required TResult Function(CommentStateDeleted value) deleted,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CommentStateInitial value)? initial,
    TResult? Function(CommentStateLoading value)? loading,
    TResult? Function(CommentStateSuccess value)? success,
    TResult? Function(CommentStateSuccessMultiple value)? successMultiple,
    TResult? Function(CommentStateFailure value)? failure,
    TResult? Function(CommentStateDeleted value)? deleted,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommentStateInitial value)? initial,
    TResult Function(CommentStateLoading value)? loading,
    TResult Function(CommentStateSuccess value)? success,
    TResult Function(CommentStateSuccessMultiple value)? successMultiple,
    TResult Function(CommentStateFailure value)? failure,
    TResult Function(CommentStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommentStateLoading implements CommentState {
  const factory CommentStateLoading() = _$CommentStateLoading;
}

/// @nodoc
abstract class _$$CommentStateSuccessCopyWith<$Res> {
  factory _$$CommentStateSuccessCopyWith(_$CommentStateSuccess value,
          $Res Function(_$CommentStateSuccess) then) =
      __$$CommentStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({CommentDomain comment});
}

/// @nodoc
class __$$CommentStateSuccessCopyWithImpl<$Res>
    extends _$CommentStateCopyWithImpl<$Res, _$CommentStateSuccess>
    implements _$$CommentStateSuccessCopyWith<$Res> {
  __$$CommentStateSuccessCopyWithImpl(
      _$CommentStateSuccess _value, $Res Function(_$CommentStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = null,
  }) {
    return _then(_$CommentStateSuccess(
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as CommentDomain,
    ));
  }
}

/// @nodoc

class _$CommentStateSuccess implements CommentStateSuccess {
  const _$CommentStateSuccess({required this.comment});

  @override
  final CommentDomain comment;

  @override
  String toString() {
    return 'CommentState.success(comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentStateSuccess &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentStateSuccessCopyWith<_$CommentStateSuccess> get copyWith =>
      __$$CommentStateSuccessCopyWithImpl<_$CommentStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CommentDomain comment) success,
    required TResult Function(List<CommentDomain> comments) successMultiple,
    required TResult Function(Commentfailure failure) failure,
    required TResult Function() deleted,
  }) {
    return success(comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CommentDomain comment)? success,
    TResult? Function(List<CommentDomain> comments)? successMultiple,
    TResult? Function(Commentfailure failure)? failure,
    TResult? Function()? deleted,
  }) {
    return success?.call(comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CommentDomain comment)? success,
    TResult Function(List<CommentDomain> comments)? successMultiple,
    TResult Function(Commentfailure failure)? failure,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommentStateInitial value) initial,
    required TResult Function(CommentStateLoading value) loading,
    required TResult Function(CommentStateSuccess value) success,
    required TResult Function(CommentStateSuccessMultiple value)
        successMultiple,
    required TResult Function(CommentStateFailure value) failure,
    required TResult Function(CommentStateDeleted value) deleted,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CommentStateInitial value)? initial,
    TResult? Function(CommentStateLoading value)? loading,
    TResult? Function(CommentStateSuccess value)? success,
    TResult? Function(CommentStateSuccessMultiple value)? successMultiple,
    TResult? Function(CommentStateFailure value)? failure,
    TResult? Function(CommentStateDeleted value)? deleted,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommentStateInitial value)? initial,
    TResult Function(CommentStateLoading value)? loading,
    TResult Function(CommentStateSuccess value)? success,
    TResult Function(CommentStateSuccessMultiple value)? successMultiple,
    TResult Function(CommentStateFailure value)? failure,
    TResult Function(CommentStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class CommentStateSuccess implements CommentState {
  const factory CommentStateSuccess({required final CommentDomain comment}) =
      _$CommentStateSuccess;

  CommentDomain get comment;
  @JsonKey(ignore: true)
  _$$CommentStateSuccessCopyWith<_$CommentStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CommentStateSuccessMultipleCopyWith<$Res> {
  factory _$$CommentStateSuccessMultipleCopyWith(
          _$CommentStateSuccessMultiple value,
          $Res Function(_$CommentStateSuccessMultiple) then) =
      __$$CommentStateSuccessMultipleCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CommentDomain> comments});
}

/// @nodoc
class __$$CommentStateSuccessMultipleCopyWithImpl<$Res>
    extends _$CommentStateCopyWithImpl<$Res, _$CommentStateSuccessMultiple>
    implements _$$CommentStateSuccessMultipleCopyWith<$Res> {
  __$$CommentStateSuccessMultipleCopyWithImpl(
      _$CommentStateSuccessMultiple _value,
      $Res Function(_$CommentStateSuccessMultiple) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = null,
  }) {
    return _then(_$CommentStateSuccessMultiple(
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentDomain>,
    ));
  }
}

/// @nodoc

class _$CommentStateSuccessMultiple implements CommentStateSuccessMultiple {
  const _$CommentStateSuccessMultiple(
      {required final List<CommentDomain> comments})
      : _comments = comments;

  final List<CommentDomain> _comments;
  @override
  List<CommentDomain> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  String toString() {
    return 'CommentState.successMultiple(comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentStateSuccessMultiple &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_comments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentStateSuccessMultipleCopyWith<_$CommentStateSuccessMultiple>
      get copyWith => __$$CommentStateSuccessMultipleCopyWithImpl<
          _$CommentStateSuccessMultiple>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CommentDomain comment) success,
    required TResult Function(List<CommentDomain> comments) successMultiple,
    required TResult Function(Commentfailure failure) failure,
    required TResult Function() deleted,
  }) {
    return successMultiple(comments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CommentDomain comment)? success,
    TResult? Function(List<CommentDomain> comments)? successMultiple,
    TResult? Function(Commentfailure failure)? failure,
    TResult? Function()? deleted,
  }) {
    return successMultiple?.call(comments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CommentDomain comment)? success,
    TResult Function(List<CommentDomain> comments)? successMultiple,
    TResult Function(Commentfailure failure)? failure,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (successMultiple != null) {
      return successMultiple(comments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommentStateInitial value) initial,
    required TResult Function(CommentStateLoading value) loading,
    required TResult Function(CommentStateSuccess value) success,
    required TResult Function(CommentStateSuccessMultiple value)
        successMultiple,
    required TResult Function(CommentStateFailure value) failure,
    required TResult Function(CommentStateDeleted value) deleted,
  }) {
    return successMultiple(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CommentStateInitial value)? initial,
    TResult? Function(CommentStateLoading value)? loading,
    TResult? Function(CommentStateSuccess value)? success,
    TResult? Function(CommentStateSuccessMultiple value)? successMultiple,
    TResult? Function(CommentStateFailure value)? failure,
    TResult? Function(CommentStateDeleted value)? deleted,
  }) {
    return successMultiple?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommentStateInitial value)? initial,
    TResult Function(CommentStateLoading value)? loading,
    TResult Function(CommentStateSuccess value)? success,
    TResult Function(CommentStateSuccessMultiple value)? successMultiple,
    TResult Function(CommentStateFailure value)? failure,
    TResult Function(CommentStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (successMultiple != null) {
      return successMultiple(this);
    }
    return orElse();
  }
}

abstract class CommentStateSuccessMultiple implements CommentState {
  const factory CommentStateSuccessMultiple(
          {required final List<CommentDomain> comments}) =
      _$CommentStateSuccessMultiple;

  List<CommentDomain> get comments;
  @JsonKey(ignore: true)
  _$$CommentStateSuccessMultipleCopyWith<_$CommentStateSuccessMultiple>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CommentStateFailureCopyWith<$Res> {
  factory _$$CommentStateFailureCopyWith(_$CommentStateFailure value,
          $Res Function(_$CommentStateFailure) then) =
      __$$CommentStateFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({Commentfailure failure});

  $CommentfailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$CommentStateFailureCopyWithImpl<$Res>
    extends _$CommentStateCopyWithImpl<$Res, _$CommentStateFailure>
    implements _$$CommentStateFailureCopyWith<$Res> {
  __$$CommentStateFailureCopyWithImpl(
      _$CommentStateFailure _value, $Res Function(_$CommentStateFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$CommentStateFailure(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Commentfailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CommentfailureCopyWith<$Res> get failure {
    return $CommentfailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$CommentStateFailure implements CommentStateFailure {
  const _$CommentStateFailure({required this.failure});

  @override
  final Commentfailure failure;

  @override
  String toString() {
    return 'CommentState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentStateFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentStateFailureCopyWith<_$CommentStateFailure> get copyWith =>
      __$$CommentStateFailureCopyWithImpl<_$CommentStateFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CommentDomain comment) success,
    required TResult Function(List<CommentDomain> comments) successMultiple,
    required TResult Function(Commentfailure failure) failure,
    required TResult Function() deleted,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CommentDomain comment)? success,
    TResult? Function(List<CommentDomain> comments)? successMultiple,
    TResult? Function(Commentfailure failure)? failure,
    TResult? Function()? deleted,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CommentDomain comment)? success,
    TResult Function(List<CommentDomain> comments)? successMultiple,
    TResult Function(Commentfailure failure)? failure,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommentStateInitial value) initial,
    required TResult Function(CommentStateLoading value) loading,
    required TResult Function(CommentStateSuccess value) success,
    required TResult Function(CommentStateSuccessMultiple value)
        successMultiple,
    required TResult Function(CommentStateFailure value) failure,
    required TResult Function(CommentStateDeleted value) deleted,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CommentStateInitial value)? initial,
    TResult? Function(CommentStateLoading value)? loading,
    TResult? Function(CommentStateSuccess value)? success,
    TResult? Function(CommentStateSuccessMultiple value)? successMultiple,
    TResult? Function(CommentStateFailure value)? failure,
    TResult? Function(CommentStateDeleted value)? deleted,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommentStateInitial value)? initial,
    TResult Function(CommentStateLoading value)? loading,
    TResult Function(CommentStateSuccess value)? success,
    TResult Function(CommentStateSuccessMultiple value)? successMultiple,
    TResult Function(CommentStateFailure value)? failure,
    TResult Function(CommentStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class CommentStateFailure implements CommentState {
  const factory CommentStateFailure({required final Commentfailure failure}) =
      _$CommentStateFailure;

  Commentfailure get failure;
  @JsonKey(ignore: true)
  _$$CommentStateFailureCopyWith<_$CommentStateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CommentStateDeletedCopyWith<$Res> {
  factory _$$CommentStateDeletedCopyWith(_$CommentStateDeleted value,
          $Res Function(_$CommentStateDeleted) then) =
      __$$CommentStateDeletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CommentStateDeletedCopyWithImpl<$Res>
    extends _$CommentStateCopyWithImpl<$Res, _$CommentStateDeleted>
    implements _$$CommentStateDeletedCopyWith<$Res> {
  __$$CommentStateDeletedCopyWithImpl(
      _$CommentStateDeleted _value, $Res Function(_$CommentStateDeleted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CommentStateDeleted implements CommentStateDeleted {
  const _$CommentStateDeleted();

  @override
  String toString() {
    return 'CommentState.deleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CommentStateDeleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CommentDomain comment) success,
    required TResult Function(List<CommentDomain> comments) successMultiple,
    required TResult Function(Commentfailure failure) failure,
    required TResult Function() deleted,
  }) {
    return deleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CommentDomain comment)? success,
    TResult? Function(List<CommentDomain> comments)? successMultiple,
    TResult? Function(Commentfailure failure)? failure,
    TResult? Function()? deleted,
  }) {
    return deleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CommentDomain comment)? success,
    TResult Function(List<CommentDomain> comments)? successMultiple,
    TResult Function(Commentfailure failure)? failure,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommentStateInitial value) initial,
    required TResult Function(CommentStateLoading value) loading,
    required TResult Function(CommentStateSuccess value) success,
    required TResult Function(CommentStateSuccessMultiple value)
        successMultiple,
    required TResult Function(CommentStateFailure value) failure,
    required TResult Function(CommentStateDeleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CommentStateInitial value)? initial,
    TResult? Function(CommentStateLoading value)? loading,
    TResult? Function(CommentStateSuccess value)? success,
    TResult? Function(CommentStateSuccessMultiple value)? successMultiple,
    TResult? Function(CommentStateFailure value)? failure,
    TResult? Function(CommentStateDeleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommentStateInitial value)? initial,
    TResult Function(CommentStateLoading value)? loading,
    TResult Function(CommentStateSuccess value)? success,
    TResult Function(CommentStateSuccessMultiple value)? successMultiple,
    TResult Function(CommentStateFailure value)? failure,
    TResult Function(CommentStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class CommentStateDeleted implements CommentState {
  const factory CommentStateDeleted() = _$CommentStateDeleted;
}
