// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NoteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NoteDomain> notes) successMultiple,
    required TResult Function(Notefailure failure) failure,
    required TResult Function(NoteDomain note) success,
    required TResult Function(Unit unit) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NoteDomain> notes)? successMultiple,
    TResult? Function(Notefailure failure)? failure,
    TResult? Function(NoteDomain note)? success,
    TResult? Function(Unit unit)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NoteDomain> notes)? successMultiple,
    TResult Function(Notefailure failure)? failure,
    TResult Function(NoteDomain note)? success,
    TResult Function(Unit unit)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoteStateInitial value) initial,
    required TResult Function(NoteStateLoading value) loading,
    required TResult Function(NoteStateSuccessMultiple value) successMultiple,
    required TResult Function(NoteStateFailure value) failure,
    required TResult Function(NoteStateSuccess value) success,
    required TResult Function(NoteStateDeleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoteStateInitial value)? initial,
    TResult? Function(NoteStateLoading value)? loading,
    TResult? Function(NoteStateSuccessMultiple value)? successMultiple,
    TResult? Function(NoteStateFailure value)? failure,
    TResult? Function(NoteStateSuccess value)? success,
    TResult? Function(NoteStateDeleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoteStateInitial value)? initial,
    TResult Function(NoteStateLoading value)? loading,
    TResult Function(NoteStateSuccessMultiple value)? successMultiple,
    TResult Function(NoteStateFailure value)? failure,
    TResult Function(NoteStateSuccess value)? success,
    TResult Function(NoteStateDeleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteStateCopyWith<$Res> {
  factory $NoteStateCopyWith(NoteState value, $Res Function(NoteState) then) =
      _$NoteStateCopyWithImpl<$Res, NoteState>;
}

/// @nodoc
class _$NoteStateCopyWithImpl<$Res, $Val extends NoteState>
    implements $NoteStateCopyWith<$Res> {
  _$NoteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NoteStateInitialCopyWith<$Res> {
  factory _$$NoteStateInitialCopyWith(
          _$NoteStateInitial value, $Res Function(_$NoteStateInitial) then) =
      __$$NoteStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoteStateInitialCopyWithImpl<$Res>
    extends _$NoteStateCopyWithImpl<$Res, _$NoteStateInitial>
    implements _$$NoteStateInitialCopyWith<$Res> {
  __$$NoteStateInitialCopyWithImpl(
      _$NoteStateInitial _value, $Res Function(_$NoteStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoteStateInitial implements NoteStateInitial {
  const _$NoteStateInitial();

  @override
  String toString() {
    return 'NoteState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoteStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NoteDomain> notes) successMultiple,
    required TResult Function(Notefailure failure) failure,
    required TResult Function(NoteDomain note) success,
    required TResult Function(Unit unit) deleted,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NoteDomain> notes)? successMultiple,
    TResult? Function(Notefailure failure)? failure,
    TResult? Function(NoteDomain note)? success,
    TResult? Function(Unit unit)? deleted,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NoteDomain> notes)? successMultiple,
    TResult Function(Notefailure failure)? failure,
    TResult Function(NoteDomain note)? success,
    TResult Function(Unit unit)? deleted,
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
    required TResult Function(NoteStateInitial value) initial,
    required TResult Function(NoteStateLoading value) loading,
    required TResult Function(NoteStateSuccessMultiple value) successMultiple,
    required TResult Function(NoteStateFailure value) failure,
    required TResult Function(NoteStateSuccess value) success,
    required TResult Function(NoteStateDeleted value) deleted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoteStateInitial value)? initial,
    TResult? Function(NoteStateLoading value)? loading,
    TResult? Function(NoteStateSuccessMultiple value)? successMultiple,
    TResult? Function(NoteStateFailure value)? failure,
    TResult? Function(NoteStateSuccess value)? success,
    TResult? Function(NoteStateDeleted value)? deleted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoteStateInitial value)? initial,
    TResult Function(NoteStateLoading value)? loading,
    TResult Function(NoteStateSuccessMultiple value)? successMultiple,
    TResult Function(NoteStateFailure value)? failure,
    TResult Function(NoteStateSuccess value)? success,
    TResult Function(NoteStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class NoteStateInitial implements NoteState {
  const factory NoteStateInitial() = _$NoteStateInitial;
}

/// @nodoc
abstract class _$$NoteStateLoadingCopyWith<$Res> {
  factory _$$NoteStateLoadingCopyWith(
          _$NoteStateLoading value, $Res Function(_$NoteStateLoading) then) =
      __$$NoteStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoteStateLoadingCopyWithImpl<$Res>
    extends _$NoteStateCopyWithImpl<$Res, _$NoteStateLoading>
    implements _$$NoteStateLoadingCopyWith<$Res> {
  __$$NoteStateLoadingCopyWithImpl(
      _$NoteStateLoading _value, $Res Function(_$NoteStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoteStateLoading implements NoteStateLoading {
  const _$NoteStateLoading();

  @override
  String toString() {
    return 'NoteState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoteStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NoteDomain> notes) successMultiple,
    required TResult Function(Notefailure failure) failure,
    required TResult Function(NoteDomain note) success,
    required TResult Function(Unit unit) deleted,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NoteDomain> notes)? successMultiple,
    TResult? Function(Notefailure failure)? failure,
    TResult? Function(NoteDomain note)? success,
    TResult? Function(Unit unit)? deleted,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NoteDomain> notes)? successMultiple,
    TResult Function(Notefailure failure)? failure,
    TResult Function(NoteDomain note)? success,
    TResult Function(Unit unit)? deleted,
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
    required TResult Function(NoteStateInitial value) initial,
    required TResult Function(NoteStateLoading value) loading,
    required TResult Function(NoteStateSuccessMultiple value) successMultiple,
    required TResult Function(NoteStateFailure value) failure,
    required TResult Function(NoteStateSuccess value) success,
    required TResult Function(NoteStateDeleted value) deleted,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoteStateInitial value)? initial,
    TResult? Function(NoteStateLoading value)? loading,
    TResult? Function(NoteStateSuccessMultiple value)? successMultiple,
    TResult? Function(NoteStateFailure value)? failure,
    TResult? Function(NoteStateSuccess value)? success,
    TResult? Function(NoteStateDeleted value)? deleted,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoteStateInitial value)? initial,
    TResult Function(NoteStateLoading value)? loading,
    TResult Function(NoteStateSuccessMultiple value)? successMultiple,
    TResult Function(NoteStateFailure value)? failure,
    TResult Function(NoteStateSuccess value)? success,
    TResult Function(NoteStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class NoteStateLoading implements NoteState {
  const factory NoteStateLoading() = _$NoteStateLoading;
}

/// @nodoc
abstract class _$$NoteStateSuccessMultipleCopyWith<$Res> {
  factory _$$NoteStateSuccessMultipleCopyWith(_$NoteStateSuccessMultiple value,
          $Res Function(_$NoteStateSuccessMultiple) then) =
      __$$NoteStateSuccessMultipleCopyWithImpl<$Res>;
  @useResult
  $Res call({List<NoteDomain> notes});
}

/// @nodoc
class __$$NoteStateSuccessMultipleCopyWithImpl<$Res>
    extends _$NoteStateCopyWithImpl<$Res, _$NoteStateSuccessMultiple>
    implements _$$NoteStateSuccessMultipleCopyWith<$Res> {
  __$$NoteStateSuccessMultipleCopyWithImpl(_$NoteStateSuccessMultiple _value,
      $Res Function(_$NoteStateSuccessMultiple) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = null,
  }) {
    return _then(_$NoteStateSuccessMultiple(
      null == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<NoteDomain>,
    ));
  }
}

/// @nodoc

class _$NoteStateSuccessMultiple implements NoteStateSuccessMultiple {
  const _$NoteStateSuccessMultiple(final List<NoteDomain> notes)
      : _notes = notes;

  final List<NoteDomain> _notes;
  @override
  List<NoteDomain> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  String toString() {
    return 'NoteState.successMultiple(notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteStateSuccessMultiple &&
            const DeepCollectionEquality().equals(other._notes, _notes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_notes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteStateSuccessMultipleCopyWith<_$NoteStateSuccessMultiple>
      get copyWith =>
          __$$NoteStateSuccessMultipleCopyWithImpl<_$NoteStateSuccessMultiple>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NoteDomain> notes) successMultiple,
    required TResult Function(Notefailure failure) failure,
    required TResult Function(NoteDomain note) success,
    required TResult Function(Unit unit) deleted,
  }) {
    return successMultiple(notes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NoteDomain> notes)? successMultiple,
    TResult? Function(Notefailure failure)? failure,
    TResult? Function(NoteDomain note)? success,
    TResult? Function(Unit unit)? deleted,
  }) {
    return successMultiple?.call(notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NoteDomain> notes)? successMultiple,
    TResult Function(Notefailure failure)? failure,
    TResult Function(NoteDomain note)? success,
    TResult Function(Unit unit)? deleted,
    required TResult orElse(),
  }) {
    if (successMultiple != null) {
      return successMultiple(notes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoteStateInitial value) initial,
    required TResult Function(NoteStateLoading value) loading,
    required TResult Function(NoteStateSuccessMultiple value) successMultiple,
    required TResult Function(NoteStateFailure value) failure,
    required TResult Function(NoteStateSuccess value) success,
    required TResult Function(NoteStateDeleted value) deleted,
  }) {
    return successMultiple(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoteStateInitial value)? initial,
    TResult? Function(NoteStateLoading value)? loading,
    TResult? Function(NoteStateSuccessMultiple value)? successMultiple,
    TResult? Function(NoteStateFailure value)? failure,
    TResult? Function(NoteStateSuccess value)? success,
    TResult? Function(NoteStateDeleted value)? deleted,
  }) {
    return successMultiple?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoteStateInitial value)? initial,
    TResult Function(NoteStateLoading value)? loading,
    TResult Function(NoteStateSuccessMultiple value)? successMultiple,
    TResult Function(NoteStateFailure value)? failure,
    TResult Function(NoteStateSuccess value)? success,
    TResult Function(NoteStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (successMultiple != null) {
      return successMultiple(this);
    }
    return orElse();
  }
}

abstract class NoteStateSuccessMultiple implements NoteState {
  const factory NoteStateSuccessMultiple(final List<NoteDomain> notes) =
      _$NoteStateSuccessMultiple;

  List<NoteDomain> get notes;
  @JsonKey(ignore: true)
  _$$NoteStateSuccessMultipleCopyWith<_$NoteStateSuccessMultiple>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoteStateFailureCopyWith<$Res> {
  factory _$$NoteStateFailureCopyWith(
          _$NoteStateFailure value, $Res Function(_$NoteStateFailure) then) =
      __$$NoteStateFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({Notefailure failure});

  $NotefailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$NoteStateFailureCopyWithImpl<$Res>
    extends _$NoteStateCopyWithImpl<$Res, _$NoteStateFailure>
    implements _$$NoteStateFailureCopyWith<$Res> {
  __$$NoteStateFailureCopyWithImpl(
      _$NoteStateFailure _value, $Res Function(_$NoteStateFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$NoteStateFailure(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Notefailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NotefailureCopyWith<$Res> get failure {
    return $NotefailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$NoteStateFailure implements NoteStateFailure {
  const _$NoteStateFailure(this.failure);

  @override
  final Notefailure failure;

  @override
  String toString() {
    return 'NoteState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteStateFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteStateFailureCopyWith<_$NoteStateFailure> get copyWith =>
      __$$NoteStateFailureCopyWithImpl<_$NoteStateFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NoteDomain> notes) successMultiple,
    required TResult Function(Notefailure failure) failure,
    required TResult Function(NoteDomain note) success,
    required TResult Function(Unit unit) deleted,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NoteDomain> notes)? successMultiple,
    TResult? Function(Notefailure failure)? failure,
    TResult? Function(NoteDomain note)? success,
    TResult? Function(Unit unit)? deleted,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NoteDomain> notes)? successMultiple,
    TResult Function(Notefailure failure)? failure,
    TResult Function(NoteDomain note)? success,
    TResult Function(Unit unit)? deleted,
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
    required TResult Function(NoteStateInitial value) initial,
    required TResult Function(NoteStateLoading value) loading,
    required TResult Function(NoteStateSuccessMultiple value) successMultiple,
    required TResult Function(NoteStateFailure value) failure,
    required TResult Function(NoteStateSuccess value) success,
    required TResult Function(NoteStateDeleted value) deleted,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoteStateInitial value)? initial,
    TResult? Function(NoteStateLoading value)? loading,
    TResult? Function(NoteStateSuccessMultiple value)? successMultiple,
    TResult? Function(NoteStateFailure value)? failure,
    TResult? Function(NoteStateSuccess value)? success,
    TResult? Function(NoteStateDeleted value)? deleted,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoteStateInitial value)? initial,
    TResult Function(NoteStateLoading value)? loading,
    TResult Function(NoteStateSuccessMultiple value)? successMultiple,
    TResult Function(NoteStateFailure value)? failure,
    TResult Function(NoteStateSuccess value)? success,
    TResult Function(NoteStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class NoteStateFailure implements NoteState {
  const factory NoteStateFailure(final Notefailure failure) =
      _$NoteStateFailure;

  Notefailure get failure;
  @JsonKey(ignore: true)
  _$$NoteStateFailureCopyWith<_$NoteStateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoteStateSuccessCopyWith<$Res> {
  factory _$$NoteStateSuccessCopyWith(
          _$NoteStateSuccess value, $Res Function(_$NoteStateSuccess) then) =
      __$$NoteStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({NoteDomain note});
}

/// @nodoc
class __$$NoteStateSuccessCopyWithImpl<$Res>
    extends _$NoteStateCopyWithImpl<$Res, _$NoteStateSuccess>
    implements _$$NoteStateSuccessCopyWith<$Res> {
  __$$NoteStateSuccessCopyWithImpl(
      _$NoteStateSuccess _value, $Res Function(_$NoteStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
  }) {
    return _then(_$NoteStateSuccess(
      null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as NoteDomain,
    ));
  }
}

/// @nodoc

class _$NoteStateSuccess implements NoteStateSuccess {
  const _$NoteStateSuccess(this.note);

  @override
  final NoteDomain note;

  @override
  String toString() {
    return 'NoteState.success(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteStateSuccess &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteStateSuccessCopyWith<_$NoteStateSuccess> get copyWith =>
      __$$NoteStateSuccessCopyWithImpl<_$NoteStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NoteDomain> notes) successMultiple,
    required TResult Function(Notefailure failure) failure,
    required TResult Function(NoteDomain note) success,
    required TResult Function(Unit unit) deleted,
  }) {
    return success(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NoteDomain> notes)? successMultiple,
    TResult? Function(Notefailure failure)? failure,
    TResult? Function(NoteDomain note)? success,
    TResult? Function(Unit unit)? deleted,
  }) {
    return success?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NoteDomain> notes)? successMultiple,
    TResult Function(Notefailure failure)? failure,
    TResult Function(NoteDomain note)? success,
    TResult Function(Unit unit)? deleted,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoteStateInitial value) initial,
    required TResult Function(NoteStateLoading value) loading,
    required TResult Function(NoteStateSuccessMultiple value) successMultiple,
    required TResult Function(NoteStateFailure value) failure,
    required TResult Function(NoteStateSuccess value) success,
    required TResult Function(NoteStateDeleted value) deleted,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoteStateInitial value)? initial,
    TResult? Function(NoteStateLoading value)? loading,
    TResult? Function(NoteStateSuccessMultiple value)? successMultiple,
    TResult? Function(NoteStateFailure value)? failure,
    TResult? Function(NoteStateSuccess value)? success,
    TResult? Function(NoteStateDeleted value)? deleted,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoteStateInitial value)? initial,
    TResult Function(NoteStateLoading value)? loading,
    TResult Function(NoteStateSuccessMultiple value)? successMultiple,
    TResult Function(NoteStateFailure value)? failure,
    TResult Function(NoteStateSuccess value)? success,
    TResult Function(NoteStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class NoteStateSuccess implements NoteState {
  const factory NoteStateSuccess(final NoteDomain note) = _$NoteStateSuccess;

  NoteDomain get note;
  @JsonKey(ignore: true)
  _$$NoteStateSuccessCopyWith<_$NoteStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoteStateDeletedCopyWith<$Res> {
  factory _$$NoteStateDeletedCopyWith(
          _$NoteStateDeleted value, $Res Function(_$NoteStateDeleted) then) =
      __$$NoteStateDeletedCopyWithImpl<$Res>;
  @useResult
  $Res call({Unit unit});
}

/// @nodoc
class __$$NoteStateDeletedCopyWithImpl<$Res>
    extends _$NoteStateCopyWithImpl<$Res, _$NoteStateDeleted>
    implements _$$NoteStateDeletedCopyWith<$Res> {
  __$$NoteStateDeletedCopyWithImpl(
      _$NoteStateDeleted _value, $Res Function(_$NoteStateDeleted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unit = null,
  }) {
    return _then(_$NoteStateDeleted(
      null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Unit,
    ));
  }
}

/// @nodoc

class _$NoteStateDeleted implements NoteStateDeleted {
  const _$NoteStateDeleted(this.unit);

  @override
  final Unit unit;

  @override
  String toString() {
    return 'NoteState.deleted(unit: $unit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteStateDeleted &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, unit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteStateDeletedCopyWith<_$NoteStateDeleted> get copyWith =>
      __$$NoteStateDeletedCopyWithImpl<_$NoteStateDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NoteDomain> notes) successMultiple,
    required TResult Function(Notefailure failure) failure,
    required TResult Function(NoteDomain note) success,
    required TResult Function(Unit unit) deleted,
  }) {
    return deleted(unit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NoteDomain> notes)? successMultiple,
    TResult? Function(Notefailure failure)? failure,
    TResult? Function(NoteDomain note)? success,
    TResult? Function(Unit unit)? deleted,
  }) {
    return deleted?.call(unit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NoteDomain> notes)? successMultiple,
    TResult Function(Notefailure failure)? failure,
    TResult Function(NoteDomain note)? success,
    TResult Function(Unit unit)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(unit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoteStateInitial value) initial,
    required TResult Function(NoteStateLoading value) loading,
    required TResult Function(NoteStateSuccessMultiple value) successMultiple,
    required TResult Function(NoteStateFailure value) failure,
    required TResult Function(NoteStateSuccess value) success,
    required TResult Function(NoteStateDeleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoteStateInitial value)? initial,
    TResult? Function(NoteStateLoading value)? loading,
    TResult? Function(NoteStateSuccessMultiple value)? successMultiple,
    TResult? Function(NoteStateFailure value)? failure,
    TResult? Function(NoteStateSuccess value)? success,
    TResult? Function(NoteStateDeleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoteStateInitial value)? initial,
    TResult Function(NoteStateLoading value)? loading,
    TResult Function(NoteStateSuccessMultiple value)? successMultiple,
    TResult Function(NoteStateFailure value)? failure,
    TResult Function(NoteStateSuccess value)? success,
    TResult Function(NoteStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class NoteStateDeleted implements NoteState {
  const factory NoteStateDeleted(final Unit unit) = _$NoteStateDeleted;

  Unit get unit;
  @JsonKey(ignore: true)
  _$$NoteStateDeletedCopyWith<_$NoteStateDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}
