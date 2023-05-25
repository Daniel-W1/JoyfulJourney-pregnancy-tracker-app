// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NoteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoteForm noteForm) add,
    required TResult Function(NoteForm noteForm, String noteId) update,
    required TResult Function(String noteId) delete,
    required TResult Function(String userId) getByUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoteForm noteForm)? add,
    TResult? Function(NoteForm noteForm, String noteId)? update,
    TResult? Function(String noteId)? delete,
    TResult? Function(String userId)? getByUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoteForm noteForm)? add,
    TResult Function(NoteForm noteForm, String noteId)? update,
    TResult Function(String noteId)? delete,
    TResult Function(String userId)? getByUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoteEventAdd value) add,
    required TResult Function(NoteEventUpdate value) update,
    required TResult Function(NoteEventDelete value) delete,
    required TResult Function(NoteEventGetByUser value) getByUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoteEventAdd value)? add,
    TResult? Function(NoteEventUpdate value)? update,
    TResult? Function(NoteEventDelete value)? delete,
    TResult? Function(NoteEventGetByUser value)? getByUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoteEventAdd value)? add,
    TResult Function(NoteEventUpdate value)? update,
    TResult Function(NoteEventDelete value)? delete,
    TResult Function(NoteEventGetByUser value)? getByUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteEventCopyWith<$Res> {
  factory $NoteEventCopyWith(NoteEvent value, $Res Function(NoteEvent) then) =
      _$NoteEventCopyWithImpl<$Res, NoteEvent>;
}

/// @nodoc
class _$NoteEventCopyWithImpl<$Res, $Val extends NoteEvent>
    implements $NoteEventCopyWith<$Res> {
  _$NoteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NoteEventAddCopyWith<$Res> {
  factory _$$NoteEventAddCopyWith(
          _$NoteEventAdd value, $Res Function(_$NoteEventAdd) then) =
      __$$NoteEventAddCopyWithImpl<$Res>;
  @useResult
  $Res call({NoteForm noteForm});

  $NoteFormCopyWith<$Res> get noteForm;
}

/// @nodoc
class __$$NoteEventAddCopyWithImpl<$Res>
    extends _$NoteEventCopyWithImpl<$Res, _$NoteEventAdd>
    implements _$$NoteEventAddCopyWith<$Res> {
  __$$NoteEventAddCopyWithImpl(
      _$NoteEventAdd _value, $Res Function(_$NoteEventAdd) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noteForm = null,
  }) {
    return _then(_$NoteEventAdd(
      null == noteForm
          ? _value.noteForm
          : noteForm // ignore: cast_nullable_to_non_nullable
              as NoteForm,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NoteFormCopyWith<$Res> get noteForm {
    return $NoteFormCopyWith<$Res>(_value.noteForm, (value) {
      return _then(_value.copyWith(noteForm: value));
    });
  }
}

/// @nodoc

class _$NoteEventAdd implements NoteEventAdd {
  const _$NoteEventAdd(this.noteForm);

  @override
  final NoteForm noteForm;

  @override
  String toString() {
    return 'NoteEvent.add(noteForm: $noteForm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteEventAdd &&
            (identical(other.noteForm, noteForm) ||
                other.noteForm == noteForm));
  }

  @override
  int get hashCode => Object.hash(runtimeType, noteForm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteEventAddCopyWith<_$NoteEventAdd> get copyWith =>
      __$$NoteEventAddCopyWithImpl<_$NoteEventAdd>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoteForm noteForm) add,
    required TResult Function(NoteForm noteForm, String noteId) update,
    required TResult Function(String noteId) delete,
    required TResult Function(String userId) getByUser,
  }) {
    return add(noteForm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoteForm noteForm)? add,
    TResult? Function(NoteForm noteForm, String noteId)? update,
    TResult? Function(String noteId)? delete,
    TResult? Function(String userId)? getByUser,
  }) {
    return add?.call(noteForm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoteForm noteForm)? add,
    TResult Function(NoteForm noteForm, String noteId)? update,
    TResult Function(String noteId)? delete,
    TResult Function(String userId)? getByUser,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(noteForm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoteEventAdd value) add,
    required TResult Function(NoteEventUpdate value) update,
    required TResult Function(NoteEventDelete value) delete,
    required TResult Function(NoteEventGetByUser value) getByUser,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoteEventAdd value)? add,
    TResult? Function(NoteEventUpdate value)? update,
    TResult? Function(NoteEventDelete value)? delete,
    TResult? Function(NoteEventGetByUser value)? getByUser,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoteEventAdd value)? add,
    TResult Function(NoteEventUpdate value)? update,
    TResult Function(NoteEventDelete value)? delete,
    TResult Function(NoteEventGetByUser value)? getByUser,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class NoteEventAdd implements NoteEvent {
  const factory NoteEventAdd(final NoteForm noteForm) = _$NoteEventAdd;

  NoteForm get noteForm;
  @JsonKey(ignore: true)
  _$$NoteEventAddCopyWith<_$NoteEventAdd> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoteEventUpdateCopyWith<$Res> {
  factory _$$NoteEventUpdateCopyWith(
          _$NoteEventUpdate value, $Res Function(_$NoteEventUpdate) then) =
      __$$NoteEventUpdateCopyWithImpl<$Res>;
  @useResult
  $Res call({NoteForm noteForm, String noteId});

  $NoteFormCopyWith<$Res> get noteForm;
}

/// @nodoc
class __$$NoteEventUpdateCopyWithImpl<$Res>
    extends _$NoteEventCopyWithImpl<$Res, _$NoteEventUpdate>
    implements _$$NoteEventUpdateCopyWith<$Res> {
  __$$NoteEventUpdateCopyWithImpl(
      _$NoteEventUpdate _value, $Res Function(_$NoteEventUpdate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noteForm = null,
    Object? noteId = null,
  }) {
    return _then(_$NoteEventUpdate(
      null == noteForm
          ? _value.noteForm
          : noteForm // ignore: cast_nullable_to_non_nullable
              as NoteForm,
      null == noteId
          ? _value.noteId
          : noteId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NoteFormCopyWith<$Res> get noteForm {
    return $NoteFormCopyWith<$Res>(_value.noteForm, (value) {
      return _then(_value.copyWith(noteForm: value));
    });
  }
}

/// @nodoc

class _$NoteEventUpdate implements NoteEventUpdate {
  const _$NoteEventUpdate(this.noteForm, this.noteId);

  @override
  final NoteForm noteForm;
  @override
  final String noteId;

  @override
  String toString() {
    return 'NoteEvent.update(noteForm: $noteForm, noteId: $noteId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteEventUpdate &&
            (identical(other.noteForm, noteForm) ||
                other.noteForm == noteForm) &&
            (identical(other.noteId, noteId) || other.noteId == noteId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, noteForm, noteId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteEventUpdateCopyWith<_$NoteEventUpdate> get copyWith =>
      __$$NoteEventUpdateCopyWithImpl<_$NoteEventUpdate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoteForm noteForm) add,
    required TResult Function(NoteForm noteForm, String noteId) update,
    required TResult Function(String noteId) delete,
    required TResult Function(String userId) getByUser,
  }) {
    return update(noteForm, noteId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoteForm noteForm)? add,
    TResult? Function(NoteForm noteForm, String noteId)? update,
    TResult? Function(String noteId)? delete,
    TResult? Function(String userId)? getByUser,
  }) {
    return update?.call(noteForm, noteId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoteForm noteForm)? add,
    TResult Function(NoteForm noteForm, String noteId)? update,
    TResult Function(String noteId)? delete,
    TResult Function(String userId)? getByUser,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(noteForm, noteId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoteEventAdd value) add,
    required TResult Function(NoteEventUpdate value) update,
    required TResult Function(NoteEventDelete value) delete,
    required TResult Function(NoteEventGetByUser value) getByUser,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoteEventAdd value)? add,
    TResult? Function(NoteEventUpdate value)? update,
    TResult? Function(NoteEventDelete value)? delete,
    TResult? Function(NoteEventGetByUser value)? getByUser,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoteEventAdd value)? add,
    TResult Function(NoteEventUpdate value)? update,
    TResult Function(NoteEventDelete value)? delete,
    TResult Function(NoteEventGetByUser value)? getByUser,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class NoteEventUpdate implements NoteEvent {
  const factory NoteEventUpdate(final NoteForm noteForm, final String noteId) =
      _$NoteEventUpdate;

  NoteForm get noteForm;
  String get noteId;
  @JsonKey(ignore: true)
  _$$NoteEventUpdateCopyWith<_$NoteEventUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoteEventDeleteCopyWith<$Res> {
  factory _$$NoteEventDeleteCopyWith(
          _$NoteEventDelete value, $Res Function(_$NoteEventDelete) then) =
      __$$NoteEventDeleteCopyWithImpl<$Res>;
  @useResult
  $Res call({String noteId});
}

/// @nodoc
class __$$NoteEventDeleteCopyWithImpl<$Res>
    extends _$NoteEventCopyWithImpl<$Res, _$NoteEventDelete>
    implements _$$NoteEventDeleteCopyWith<$Res> {
  __$$NoteEventDeleteCopyWithImpl(
      _$NoteEventDelete _value, $Res Function(_$NoteEventDelete) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noteId = null,
  }) {
    return _then(_$NoteEventDelete(
      null == noteId
          ? _value.noteId
          : noteId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoteEventDelete implements NoteEventDelete {
  const _$NoteEventDelete(this.noteId);

  @override
  final String noteId;

  @override
  String toString() {
    return 'NoteEvent.delete(noteId: $noteId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteEventDelete &&
            (identical(other.noteId, noteId) || other.noteId == noteId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, noteId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteEventDeleteCopyWith<_$NoteEventDelete> get copyWith =>
      __$$NoteEventDeleteCopyWithImpl<_$NoteEventDelete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoteForm noteForm) add,
    required TResult Function(NoteForm noteForm, String noteId) update,
    required TResult Function(String noteId) delete,
    required TResult Function(String userId) getByUser,
  }) {
    return delete(noteId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoteForm noteForm)? add,
    TResult? Function(NoteForm noteForm, String noteId)? update,
    TResult? Function(String noteId)? delete,
    TResult? Function(String userId)? getByUser,
  }) {
    return delete?.call(noteId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoteForm noteForm)? add,
    TResult Function(NoteForm noteForm, String noteId)? update,
    TResult Function(String noteId)? delete,
    TResult Function(String userId)? getByUser,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(noteId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoteEventAdd value) add,
    required TResult Function(NoteEventUpdate value) update,
    required TResult Function(NoteEventDelete value) delete,
    required TResult Function(NoteEventGetByUser value) getByUser,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoteEventAdd value)? add,
    TResult? Function(NoteEventUpdate value)? update,
    TResult? Function(NoteEventDelete value)? delete,
    TResult? Function(NoteEventGetByUser value)? getByUser,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoteEventAdd value)? add,
    TResult Function(NoteEventUpdate value)? update,
    TResult Function(NoteEventDelete value)? delete,
    TResult Function(NoteEventGetByUser value)? getByUser,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class NoteEventDelete implements NoteEvent {
  const factory NoteEventDelete(final String noteId) = _$NoteEventDelete;

  String get noteId;
  @JsonKey(ignore: true)
  _$$NoteEventDeleteCopyWith<_$NoteEventDelete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoteEventGetByUserCopyWith<$Res> {
  factory _$$NoteEventGetByUserCopyWith(_$NoteEventGetByUser value,
          $Res Function(_$NoteEventGetByUser) then) =
      __$$NoteEventGetByUserCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$NoteEventGetByUserCopyWithImpl<$Res>
    extends _$NoteEventCopyWithImpl<$Res, _$NoteEventGetByUser>
    implements _$$NoteEventGetByUserCopyWith<$Res> {
  __$$NoteEventGetByUserCopyWithImpl(
      _$NoteEventGetByUser _value, $Res Function(_$NoteEventGetByUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$NoteEventGetByUser(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoteEventGetByUser implements NoteEventGetByUser {
  const _$NoteEventGetByUser(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'NoteEvent.getByUser(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteEventGetByUser &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteEventGetByUserCopyWith<_$NoteEventGetByUser> get copyWith =>
      __$$NoteEventGetByUserCopyWithImpl<_$NoteEventGetByUser>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoteForm noteForm) add,
    required TResult Function(NoteForm noteForm, String noteId) update,
    required TResult Function(String noteId) delete,
    required TResult Function(String userId) getByUser,
  }) {
    return getByUser(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoteForm noteForm)? add,
    TResult? Function(NoteForm noteForm, String noteId)? update,
    TResult? Function(String noteId)? delete,
    TResult? Function(String userId)? getByUser,
  }) {
    return getByUser?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoteForm noteForm)? add,
    TResult Function(NoteForm noteForm, String noteId)? update,
    TResult Function(String noteId)? delete,
    TResult Function(String userId)? getByUser,
    required TResult orElse(),
  }) {
    if (getByUser != null) {
      return getByUser(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoteEventAdd value) add,
    required TResult Function(NoteEventUpdate value) update,
    required TResult Function(NoteEventDelete value) delete,
    required TResult Function(NoteEventGetByUser value) getByUser,
  }) {
    return getByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoteEventAdd value)? add,
    TResult? Function(NoteEventUpdate value)? update,
    TResult? Function(NoteEventDelete value)? delete,
    TResult? Function(NoteEventGetByUser value)? getByUser,
  }) {
    return getByUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoteEventAdd value)? add,
    TResult Function(NoteEventUpdate value)? update,
    TResult Function(NoteEventDelete value)? delete,
    TResult Function(NoteEventGetByUser value)? getByUser,
    required TResult orElse(),
  }) {
    if (getByUser != null) {
      return getByUser(this);
    }
    return orElse();
  }
}

abstract class NoteEventGetByUser implements NoteEvent {
  const factory NoteEventGetByUser(final String userId) = _$NoteEventGetByUser;

  String get userId;
  @JsonKey(ignore: true)
  _$$NoteEventGetByUserCopyWith<_$NoteEventGetByUser> get copyWith =>
      throw _privateConstructorUsedError;
}
