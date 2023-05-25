// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tip_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TipState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TipDomain comment) success,
    required TResult Function(List<TipDomain> comments) successMultiple,
    required TResult Function(Unit success) deleted,
    required TResult Function(Tipfailure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TipDomain comment)? success,
    TResult? Function(List<TipDomain> comments)? successMultiple,
    TResult? Function(Unit success)? deleted,
    TResult? Function(Tipfailure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TipDomain comment)? success,
    TResult Function(List<TipDomain> comments)? successMultiple,
    TResult Function(Unit success)? deleted,
    TResult Function(Tipfailure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TipStateInitial value) initial,
    required TResult Function(TipStateLoading value) loading,
    required TResult Function(TipStateSuccess value) success,
    required TResult Function(TipStateSuccessMultiple value) successMultiple,
    required TResult Function(TipStateDeleted value) deleted,
    required TResult Function(TipStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TipStateInitial value)? initial,
    TResult? Function(TipStateLoading value)? loading,
    TResult? Function(TipStateSuccess value)? success,
    TResult? Function(TipStateSuccessMultiple value)? successMultiple,
    TResult? Function(TipStateDeleted value)? deleted,
    TResult? Function(TipStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TipStateInitial value)? initial,
    TResult Function(TipStateLoading value)? loading,
    TResult Function(TipStateSuccess value)? success,
    TResult Function(TipStateSuccessMultiple value)? successMultiple,
    TResult Function(TipStateDeleted value)? deleted,
    TResult Function(TipStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TipStateCopyWith<$Res> {
  factory $TipStateCopyWith(TipState value, $Res Function(TipState) then) =
      _$TipStateCopyWithImpl<$Res, TipState>;
}

/// @nodoc
class _$TipStateCopyWithImpl<$Res, $Val extends TipState>
    implements $TipStateCopyWith<$Res> {
  _$TipStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TipStateInitialCopyWith<$Res> {
  factory _$$TipStateInitialCopyWith(
          _$TipStateInitial value, $Res Function(_$TipStateInitial) then) =
      __$$TipStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TipStateInitialCopyWithImpl<$Res>
    extends _$TipStateCopyWithImpl<$Res, _$TipStateInitial>
    implements _$$TipStateInitialCopyWith<$Res> {
  __$$TipStateInitialCopyWithImpl(
      _$TipStateInitial _value, $Res Function(_$TipStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TipStateInitial implements TipStateInitial {
  const _$TipStateInitial();

  @override
  String toString() {
    return 'TipState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TipStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TipDomain comment) success,
    required TResult Function(List<TipDomain> comments) successMultiple,
    required TResult Function(Unit success) deleted,
    required TResult Function(Tipfailure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TipDomain comment)? success,
    TResult? Function(List<TipDomain> comments)? successMultiple,
    TResult? Function(Unit success)? deleted,
    TResult? Function(Tipfailure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TipDomain comment)? success,
    TResult Function(List<TipDomain> comments)? successMultiple,
    TResult Function(Unit success)? deleted,
    TResult Function(Tipfailure failure)? failure,
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
    required TResult Function(TipStateInitial value) initial,
    required TResult Function(TipStateLoading value) loading,
    required TResult Function(TipStateSuccess value) success,
    required TResult Function(TipStateSuccessMultiple value) successMultiple,
    required TResult Function(TipStateDeleted value) deleted,
    required TResult Function(TipStateFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TipStateInitial value)? initial,
    TResult? Function(TipStateLoading value)? loading,
    TResult? Function(TipStateSuccess value)? success,
    TResult? Function(TipStateSuccessMultiple value)? successMultiple,
    TResult? Function(TipStateDeleted value)? deleted,
    TResult? Function(TipStateFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TipStateInitial value)? initial,
    TResult Function(TipStateLoading value)? loading,
    TResult Function(TipStateSuccess value)? success,
    TResult Function(TipStateSuccessMultiple value)? successMultiple,
    TResult Function(TipStateDeleted value)? deleted,
    TResult Function(TipStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TipStateInitial implements TipState {
  const factory TipStateInitial() = _$TipStateInitial;
}

/// @nodoc
abstract class _$$TipStateLoadingCopyWith<$Res> {
  factory _$$TipStateLoadingCopyWith(
          _$TipStateLoading value, $Res Function(_$TipStateLoading) then) =
      __$$TipStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TipStateLoadingCopyWithImpl<$Res>
    extends _$TipStateCopyWithImpl<$Res, _$TipStateLoading>
    implements _$$TipStateLoadingCopyWith<$Res> {
  __$$TipStateLoadingCopyWithImpl(
      _$TipStateLoading _value, $Res Function(_$TipStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TipStateLoading implements TipStateLoading {
  const _$TipStateLoading();

  @override
  String toString() {
    return 'TipState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TipStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TipDomain comment) success,
    required TResult Function(List<TipDomain> comments) successMultiple,
    required TResult Function(Unit success) deleted,
    required TResult Function(Tipfailure failure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TipDomain comment)? success,
    TResult? Function(List<TipDomain> comments)? successMultiple,
    TResult? Function(Unit success)? deleted,
    TResult? Function(Tipfailure failure)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TipDomain comment)? success,
    TResult Function(List<TipDomain> comments)? successMultiple,
    TResult Function(Unit success)? deleted,
    TResult Function(Tipfailure failure)? failure,
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
    required TResult Function(TipStateInitial value) initial,
    required TResult Function(TipStateLoading value) loading,
    required TResult Function(TipStateSuccess value) success,
    required TResult Function(TipStateSuccessMultiple value) successMultiple,
    required TResult Function(TipStateDeleted value) deleted,
    required TResult Function(TipStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TipStateInitial value)? initial,
    TResult? Function(TipStateLoading value)? loading,
    TResult? Function(TipStateSuccess value)? success,
    TResult? Function(TipStateSuccessMultiple value)? successMultiple,
    TResult? Function(TipStateDeleted value)? deleted,
    TResult? Function(TipStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TipStateInitial value)? initial,
    TResult Function(TipStateLoading value)? loading,
    TResult Function(TipStateSuccess value)? success,
    TResult Function(TipStateSuccessMultiple value)? successMultiple,
    TResult Function(TipStateDeleted value)? deleted,
    TResult Function(TipStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TipStateLoading implements TipState {
  const factory TipStateLoading() = _$TipStateLoading;
}

/// @nodoc
abstract class _$$TipStateSuccessCopyWith<$Res> {
  factory _$$TipStateSuccessCopyWith(
          _$TipStateSuccess value, $Res Function(_$TipStateSuccess) then) =
      __$$TipStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({TipDomain comment});
}

/// @nodoc
class __$$TipStateSuccessCopyWithImpl<$Res>
    extends _$TipStateCopyWithImpl<$Res, _$TipStateSuccess>
    implements _$$TipStateSuccessCopyWith<$Res> {
  __$$TipStateSuccessCopyWithImpl(
      _$TipStateSuccess _value, $Res Function(_$TipStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = null,
  }) {
    return _then(_$TipStateSuccess(
      null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as TipDomain,
    ));
  }
}

/// @nodoc

class _$TipStateSuccess implements TipStateSuccess {
  const _$TipStateSuccess(this.comment);

  @override
  final TipDomain comment;

  @override
  String toString() {
    return 'TipState.success(comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TipStateSuccess &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TipStateSuccessCopyWith<_$TipStateSuccess> get copyWith =>
      __$$TipStateSuccessCopyWithImpl<_$TipStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TipDomain comment) success,
    required TResult Function(List<TipDomain> comments) successMultiple,
    required TResult Function(Unit success) deleted,
    required TResult Function(Tipfailure failure) failure,
  }) {
    return success(comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TipDomain comment)? success,
    TResult? Function(List<TipDomain> comments)? successMultiple,
    TResult? Function(Unit success)? deleted,
    TResult? Function(Tipfailure failure)? failure,
  }) {
    return success?.call(comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TipDomain comment)? success,
    TResult Function(List<TipDomain> comments)? successMultiple,
    TResult Function(Unit success)? deleted,
    TResult Function(Tipfailure failure)? failure,
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
    required TResult Function(TipStateInitial value) initial,
    required TResult Function(TipStateLoading value) loading,
    required TResult Function(TipStateSuccess value) success,
    required TResult Function(TipStateSuccessMultiple value) successMultiple,
    required TResult Function(TipStateDeleted value) deleted,
    required TResult Function(TipStateFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TipStateInitial value)? initial,
    TResult? Function(TipStateLoading value)? loading,
    TResult? Function(TipStateSuccess value)? success,
    TResult? Function(TipStateSuccessMultiple value)? successMultiple,
    TResult? Function(TipStateDeleted value)? deleted,
    TResult? Function(TipStateFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TipStateInitial value)? initial,
    TResult Function(TipStateLoading value)? loading,
    TResult Function(TipStateSuccess value)? success,
    TResult Function(TipStateSuccessMultiple value)? successMultiple,
    TResult Function(TipStateDeleted value)? deleted,
    TResult Function(TipStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class TipStateSuccess implements TipState {
  const factory TipStateSuccess(final TipDomain comment) = _$TipStateSuccess;

  TipDomain get comment;
  @JsonKey(ignore: true)
  _$$TipStateSuccessCopyWith<_$TipStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TipStateSuccessMultipleCopyWith<$Res> {
  factory _$$TipStateSuccessMultipleCopyWith(_$TipStateSuccessMultiple value,
          $Res Function(_$TipStateSuccessMultiple) then) =
      __$$TipStateSuccessMultipleCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TipDomain> comments});
}

/// @nodoc
class __$$TipStateSuccessMultipleCopyWithImpl<$Res>
    extends _$TipStateCopyWithImpl<$Res, _$TipStateSuccessMultiple>
    implements _$$TipStateSuccessMultipleCopyWith<$Res> {
  __$$TipStateSuccessMultipleCopyWithImpl(_$TipStateSuccessMultiple _value,
      $Res Function(_$TipStateSuccessMultiple) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = null,
  }) {
    return _then(_$TipStateSuccessMultiple(
      null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<TipDomain>,
    ));
  }
}

/// @nodoc

class _$TipStateSuccessMultiple implements TipStateSuccessMultiple {
  const _$TipStateSuccessMultiple(final List<TipDomain> comments)
      : _comments = comments;

  final List<TipDomain> _comments;
  @override
  List<TipDomain> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  String toString() {
    return 'TipState.successMultiple(comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TipStateSuccessMultiple &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_comments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TipStateSuccessMultipleCopyWith<_$TipStateSuccessMultiple> get copyWith =>
      __$$TipStateSuccessMultipleCopyWithImpl<_$TipStateSuccessMultiple>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TipDomain comment) success,
    required TResult Function(List<TipDomain> comments) successMultiple,
    required TResult Function(Unit success) deleted,
    required TResult Function(Tipfailure failure) failure,
  }) {
    return successMultiple(comments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TipDomain comment)? success,
    TResult? Function(List<TipDomain> comments)? successMultiple,
    TResult? Function(Unit success)? deleted,
    TResult? Function(Tipfailure failure)? failure,
  }) {
    return successMultiple?.call(comments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TipDomain comment)? success,
    TResult Function(List<TipDomain> comments)? successMultiple,
    TResult Function(Unit success)? deleted,
    TResult Function(Tipfailure failure)? failure,
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
    required TResult Function(TipStateInitial value) initial,
    required TResult Function(TipStateLoading value) loading,
    required TResult Function(TipStateSuccess value) success,
    required TResult Function(TipStateSuccessMultiple value) successMultiple,
    required TResult Function(TipStateDeleted value) deleted,
    required TResult Function(TipStateFailure value) failure,
  }) {
    return successMultiple(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TipStateInitial value)? initial,
    TResult? Function(TipStateLoading value)? loading,
    TResult? Function(TipStateSuccess value)? success,
    TResult? Function(TipStateSuccessMultiple value)? successMultiple,
    TResult? Function(TipStateDeleted value)? deleted,
    TResult? Function(TipStateFailure value)? failure,
  }) {
    return successMultiple?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TipStateInitial value)? initial,
    TResult Function(TipStateLoading value)? loading,
    TResult Function(TipStateSuccess value)? success,
    TResult Function(TipStateSuccessMultiple value)? successMultiple,
    TResult Function(TipStateDeleted value)? deleted,
    TResult Function(TipStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (successMultiple != null) {
      return successMultiple(this);
    }
    return orElse();
  }
}

abstract class TipStateSuccessMultiple implements TipState {
  const factory TipStateSuccessMultiple(final List<TipDomain> comments) =
      _$TipStateSuccessMultiple;

  List<TipDomain> get comments;
  @JsonKey(ignore: true)
  _$$TipStateSuccessMultipleCopyWith<_$TipStateSuccessMultiple> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TipStateDeletedCopyWith<$Res> {
  factory _$$TipStateDeletedCopyWith(
          _$TipStateDeleted value, $Res Function(_$TipStateDeleted) then) =
      __$$TipStateDeletedCopyWithImpl<$Res>;
  @useResult
  $Res call({Unit success});
}

/// @nodoc
class __$$TipStateDeletedCopyWithImpl<$Res>
    extends _$TipStateCopyWithImpl<$Res, _$TipStateDeleted>
    implements _$$TipStateDeletedCopyWith<$Res> {
  __$$TipStateDeletedCopyWithImpl(
      _$TipStateDeleted _value, $Res Function(_$TipStateDeleted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
  }) {
    return _then(_$TipStateDeleted(
      null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as Unit,
    ));
  }
}

/// @nodoc

class _$TipStateDeleted implements TipStateDeleted {
  const _$TipStateDeleted(this.success);

  @override
  final Unit success;

  @override
  String toString() {
    return 'TipState.deleted(success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TipStateDeleted &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TipStateDeletedCopyWith<_$TipStateDeleted> get copyWith =>
      __$$TipStateDeletedCopyWithImpl<_$TipStateDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TipDomain comment) success,
    required TResult Function(List<TipDomain> comments) successMultiple,
    required TResult Function(Unit success) deleted,
    required TResult Function(Tipfailure failure) failure,
  }) {
    return deleted(this.success);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TipDomain comment)? success,
    TResult? Function(List<TipDomain> comments)? successMultiple,
    TResult? Function(Unit success)? deleted,
    TResult? Function(Tipfailure failure)? failure,
  }) {
    return deleted?.call(this.success);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TipDomain comment)? success,
    TResult Function(List<TipDomain> comments)? successMultiple,
    TResult Function(Unit success)? deleted,
    TResult Function(Tipfailure failure)? failure,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this.success);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TipStateInitial value) initial,
    required TResult Function(TipStateLoading value) loading,
    required TResult Function(TipStateSuccess value) success,
    required TResult Function(TipStateSuccessMultiple value) successMultiple,
    required TResult Function(TipStateDeleted value) deleted,
    required TResult Function(TipStateFailure value) failure,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TipStateInitial value)? initial,
    TResult? Function(TipStateLoading value)? loading,
    TResult? Function(TipStateSuccess value)? success,
    TResult? Function(TipStateSuccessMultiple value)? successMultiple,
    TResult? Function(TipStateDeleted value)? deleted,
    TResult? Function(TipStateFailure value)? failure,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TipStateInitial value)? initial,
    TResult Function(TipStateLoading value)? loading,
    TResult Function(TipStateSuccess value)? success,
    TResult Function(TipStateSuccessMultiple value)? successMultiple,
    TResult Function(TipStateDeleted value)? deleted,
    TResult Function(TipStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class TipStateDeleted implements TipState {
  const factory TipStateDeleted(final Unit success) = _$TipStateDeleted;

  Unit get success;
  @JsonKey(ignore: true)
  _$$TipStateDeletedCopyWith<_$TipStateDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TipStateFailureCopyWith<$Res> {
  factory _$$TipStateFailureCopyWith(
          _$TipStateFailure value, $Res Function(_$TipStateFailure) then) =
      __$$TipStateFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({Tipfailure failure});

  $TipfailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$TipStateFailureCopyWithImpl<$Res>
    extends _$TipStateCopyWithImpl<$Res, _$TipStateFailure>
    implements _$$TipStateFailureCopyWith<$Res> {
  __$$TipStateFailureCopyWithImpl(
      _$TipStateFailure _value, $Res Function(_$TipStateFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$TipStateFailure(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Tipfailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TipfailureCopyWith<$Res> get failure {
    return $TipfailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$TipStateFailure implements TipStateFailure {
  const _$TipStateFailure(this.failure);

  @override
  final Tipfailure failure;

  @override
  String toString() {
    return 'TipState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TipStateFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TipStateFailureCopyWith<_$TipStateFailure> get copyWith =>
      __$$TipStateFailureCopyWithImpl<_$TipStateFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TipDomain comment) success,
    required TResult Function(List<TipDomain> comments) successMultiple,
    required TResult Function(Unit success) deleted,
    required TResult Function(Tipfailure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TipDomain comment)? success,
    TResult? Function(List<TipDomain> comments)? successMultiple,
    TResult? Function(Unit success)? deleted,
    TResult? Function(Tipfailure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TipDomain comment)? success,
    TResult Function(List<TipDomain> comments)? successMultiple,
    TResult Function(Unit success)? deleted,
    TResult Function(Tipfailure failure)? failure,
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
    required TResult Function(TipStateInitial value) initial,
    required TResult Function(TipStateLoading value) loading,
    required TResult Function(TipStateSuccess value) success,
    required TResult Function(TipStateSuccessMultiple value) successMultiple,
    required TResult Function(TipStateDeleted value) deleted,
    required TResult Function(TipStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TipStateInitial value)? initial,
    TResult? Function(TipStateLoading value)? loading,
    TResult? Function(TipStateSuccess value)? success,
    TResult? Function(TipStateSuccessMultiple value)? successMultiple,
    TResult? Function(TipStateDeleted value)? deleted,
    TResult? Function(TipStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TipStateInitial value)? initial,
    TResult Function(TipStateLoading value)? loading,
    TResult Function(TipStateSuccess value)? success,
    TResult Function(TipStateSuccessMultiple value)? successMultiple,
    TResult Function(TipStateDeleted value)? deleted,
    TResult Function(TipStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class TipStateFailure implements TipState {
  const factory TipStateFailure(final Tipfailure failure) = _$TipStateFailure;

  Tipfailure get failure;
  @JsonKey(ignore: true)
  _$$TipStateFailureCopyWith<_$TipStateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
