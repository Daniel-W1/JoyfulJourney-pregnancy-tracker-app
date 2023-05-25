// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppointmentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppointmentForm appointmentForm) add,
    required TResult Function(
            AppointmentForm appointmentForm, String appointmentId)
        update,
    required TResult Function(String appointmentId) delete,
    required TResult Function(String userId) getByUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppointmentForm appointmentForm)? add,
    TResult? Function(AppointmentForm appointmentForm, String appointmentId)?
        update,
    TResult? Function(String appointmentId)? delete,
    TResult? Function(String userId)? getByUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppointmentForm appointmentForm)? add,
    TResult Function(AppointmentForm appointmentForm, String appointmentId)?
        update,
    TResult Function(String appointmentId)? delete,
    TResult Function(String userId)? getByUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppointmentEventAdd value) add,
    required TResult Function(AppointmentEventUpdate value) update,
    required TResult Function(AppointmentEventDelete value) delete,
    required TResult Function(AppointmentEventGetByUser value) getByUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppointmentEventAdd value)? add,
    TResult? Function(AppointmentEventUpdate value)? update,
    TResult? Function(AppointmentEventDelete value)? delete,
    TResult? Function(AppointmentEventGetByUser value)? getByUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppointmentEventAdd value)? add,
    TResult Function(AppointmentEventUpdate value)? update,
    TResult Function(AppointmentEventDelete value)? delete,
    TResult Function(AppointmentEventGetByUser value)? getByUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentEventCopyWith<$Res> {
  factory $AppointmentEventCopyWith(
          AppointmentEvent value, $Res Function(AppointmentEvent) then) =
      _$AppointmentEventCopyWithImpl<$Res, AppointmentEvent>;
}

/// @nodoc
class _$AppointmentEventCopyWithImpl<$Res, $Val extends AppointmentEvent>
    implements $AppointmentEventCopyWith<$Res> {
  _$AppointmentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppointmentEventAddCopyWith<$Res> {
  factory _$$AppointmentEventAddCopyWith(_$AppointmentEventAdd value,
          $Res Function(_$AppointmentEventAdd) then) =
      __$$AppointmentEventAddCopyWithImpl<$Res>;
  @useResult
  $Res call({AppointmentForm appointmentForm});

  $AppointmentFormCopyWith<$Res> get appointmentForm;
}

/// @nodoc
class __$$AppointmentEventAddCopyWithImpl<$Res>
    extends _$AppointmentEventCopyWithImpl<$Res, _$AppointmentEventAdd>
    implements _$$AppointmentEventAddCopyWith<$Res> {
  __$$AppointmentEventAddCopyWithImpl(
      _$AppointmentEventAdd _value, $Res Function(_$AppointmentEventAdd) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointmentForm = null,
  }) {
    return _then(_$AppointmentEventAdd(
      null == appointmentForm
          ? _value.appointmentForm
          : appointmentForm // ignore: cast_nullable_to_non_nullable
              as AppointmentForm,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppointmentFormCopyWith<$Res> get appointmentForm {
    return $AppointmentFormCopyWith<$Res>(_value.appointmentForm, (value) {
      return _then(_value.copyWith(appointmentForm: value));
    });
  }
}

/// @nodoc

class _$AppointmentEventAdd implements AppointmentEventAdd {
  const _$AppointmentEventAdd(this.appointmentForm);

  @override
  final AppointmentForm appointmentForm;

  @override
  String toString() {
    return 'AppointmentEvent.add(appointmentForm: $appointmentForm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentEventAdd &&
            (identical(other.appointmentForm, appointmentForm) ||
                other.appointmentForm == appointmentForm));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appointmentForm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentEventAddCopyWith<_$AppointmentEventAdd> get copyWith =>
      __$$AppointmentEventAddCopyWithImpl<_$AppointmentEventAdd>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppointmentForm appointmentForm) add,
    required TResult Function(
            AppointmentForm appointmentForm, String appointmentId)
        update,
    required TResult Function(String appointmentId) delete,
    required TResult Function(String userId) getByUser,
  }) {
    return add(appointmentForm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppointmentForm appointmentForm)? add,
    TResult? Function(AppointmentForm appointmentForm, String appointmentId)?
        update,
    TResult? Function(String appointmentId)? delete,
    TResult? Function(String userId)? getByUser,
  }) {
    return add?.call(appointmentForm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppointmentForm appointmentForm)? add,
    TResult Function(AppointmentForm appointmentForm, String appointmentId)?
        update,
    TResult Function(String appointmentId)? delete,
    TResult Function(String userId)? getByUser,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(appointmentForm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppointmentEventAdd value) add,
    required TResult Function(AppointmentEventUpdate value) update,
    required TResult Function(AppointmentEventDelete value) delete,
    required TResult Function(AppointmentEventGetByUser value) getByUser,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppointmentEventAdd value)? add,
    TResult? Function(AppointmentEventUpdate value)? update,
    TResult? Function(AppointmentEventDelete value)? delete,
    TResult? Function(AppointmentEventGetByUser value)? getByUser,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppointmentEventAdd value)? add,
    TResult Function(AppointmentEventUpdate value)? update,
    TResult Function(AppointmentEventDelete value)? delete,
    TResult Function(AppointmentEventGetByUser value)? getByUser,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class AppointmentEventAdd implements AppointmentEvent {
  const factory AppointmentEventAdd(final AppointmentForm appointmentForm) =
      _$AppointmentEventAdd;

  AppointmentForm get appointmentForm;
  @JsonKey(ignore: true)
  _$$AppointmentEventAddCopyWith<_$AppointmentEventAdd> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppointmentEventUpdateCopyWith<$Res> {
  factory _$$AppointmentEventUpdateCopyWith(_$AppointmentEventUpdate value,
          $Res Function(_$AppointmentEventUpdate) then) =
      __$$AppointmentEventUpdateCopyWithImpl<$Res>;
  @useResult
  $Res call({AppointmentForm appointmentForm, String appointmentId});

  $AppointmentFormCopyWith<$Res> get appointmentForm;
}

/// @nodoc
class __$$AppointmentEventUpdateCopyWithImpl<$Res>
    extends _$AppointmentEventCopyWithImpl<$Res, _$AppointmentEventUpdate>
    implements _$$AppointmentEventUpdateCopyWith<$Res> {
  __$$AppointmentEventUpdateCopyWithImpl(_$AppointmentEventUpdate _value,
      $Res Function(_$AppointmentEventUpdate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointmentForm = null,
    Object? appointmentId = null,
  }) {
    return _then(_$AppointmentEventUpdate(
      null == appointmentForm
          ? _value.appointmentForm
          : appointmentForm // ignore: cast_nullable_to_non_nullable
              as AppointmentForm,
      null == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppointmentFormCopyWith<$Res> get appointmentForm {
    return $AppointmentFormCopyWith<$Res>(_value.appointmentForm, (value) {
      return _then(_value.copyWith(appointmentForm: value));
    });
  }
}

/// @nodoc

class _$AppointmentEventUpdate implements AppointmentEventUpdate {
  const _$AppointmentEventUpdate(this.appointmentForm, this.appointmentId);

  @override
  final AppointmentForm appointmentForm;
  @override
  final String appointmentId;

  @override
  String toString() {
    return 'AppointmentEvent.update(appointmentForm: $appointmentForm, appointmentId: $appointmentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentEventUpdate &&
            (identical(other.appointmentForm, appointmentForm) ||
                other.appointmentForm == appointmentForm) &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appointmentForm, appointmentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentEventUpdateCopyWith<_$AppointmentEventUpdate> get copyWith =>
      __$$AppointmentEventUpdateCopyWithImpl<_$AppointmentEventUpdate>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppointmentForm appointmentForm) add,
    required TResult Function(
            AppointmentForm appointmentForm, String appointmentId)
        update,
    required TResult Function(String appointmentId) delete,
    required TResult Function(String userId) getByUser,
  }) {
    return update(appointmentForm, appointmentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppointmentForm appointmentForm)? add,
    TResult? Function(AppointmentForm appointmentForm, String appointmentId)?
        update,
    TResult? Function(String appointmentId)? delete,
    TResult? Function(String userId)? getByUser,
  }) {
    return update?.call(appointmentForm, appointmentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppointmentForm appointmentForm)? add,
    TResult Function(AppointmentForm appointmentForm, String appointmentId)?
        update,
    TResult Function(String appointmentId)? delete,
    TResult Function(String userId)? getByUser,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(appointmentForm, appointmentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppointmentEventAdd value) add,
    required TResult Function(AppointmentEventUpdate value) update,
    required TResult Function(AppointmentEventDelete value) delete,
    required TResult Function(AppointmentEventGetByUser value) getByUser,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppointmentEventAdd value)? add,
    TResult? Function(AppointmentEventUpdate value)? update,
    TResult? Function(AppointmentEventDelete value)? delete,
    TResult? Function(AppointmentEventGetByUser value)? getByUser,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppointmentEventAdd value)? add,
    TResult Function(AppointmentEventUpdate value)? update,
    TResult Function(AppointmentEventDelete value)? delete,
    TResult Function(AppointmentEventGetByUser value)? getByUser,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class AppointmentEventUpdate implements AppointmentEvent {
  const factory AppointmentEventUpdate(
          final AppointmentForm appointmentForm, final String appointmentId) =
      _$AppointmentEventUpdate;

  AppointmentForm get appointmentForm;
  String get appointmentId;
  @JsonKey(ignore: true)
  _$$AppointmentEventUpdateCopyWith<_$AppointmentEventUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppointmentEventDeleteCopyWith<$Res> {
  factory _$$AppointmentEventDeleteCopyWith(_$AppointmentEventDelete value,
          $Res Function(_$AppointmentEventDelete) then) =
      __$$AppointmentEventDeleteCopyWithImpl<$Res>;
  @useResult
  $Res call({String appointmentId});
}

/// @nodoc
class __$$AppointmentEventDeleteCopyWithImpl<$Res>
    extends _$AppointmentEventCopyWithImpl<$Res, _$AppointmentEventDelete>
    implements _$$AppointmentEventDeleteCopyWith<$Res> {
  __$$AppointmentEventDeleteCopyWithImpl(_$AppointmentEventDelete _value,
      $Res Function(_$AppointmentEventDelete) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointmentId = null,
  }) {
    return _then(_$AppointmentEventDelete(
      null == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AppointmentEventDelete implements AppointmentEventDelete {
  const _$AppointmentEventDelete(this.appointmentId);

  @override
  final String appointmentId;

  @override
  String toString() {
    return 'AppointmentEvent.delete(appointmentId: $appointmentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentEventDelete &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appointmentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentEventDeleteCopyWith<_$AppointmentEventDelete> get copyWith =>
      __$$AppointmentEventDeleteCopyWithImpl<_$AppointmentEventDelete>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppointmentForm appointmentForm) add,
    required TResult Function(
            AppointmentForm appointmentForm, String appointmentId)
        update,
    required TResult Function(String appointmentId) delete,
    required TResult Function(String userId) getByUser,
  }) {
    return delete(appointmentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppointmentForm appointmentForm)? add,
    TResult? Function(AppointmentForm appointmentForm, String appointmentId)?
        update,
    TResult? Function(String appointmentId)? delete,
    TResult? Function(String userId)? getByUser,
  }) {
    return delete?.call(appointmentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppointmentForm appointmentForm)? add,
    TResult Function(AppointmentForm appointmentForm, String appointmentId)?
        update,
    TResult Function(String appointmentId)? delete,
    TResult Function(String userId)? getByUser,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(appointmentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppointmentEventAdd value) add,
    required TResult Function(AppointmentEventUpdate value) update,
    required TResult Function(AppointmentEventDelete value) delete,
    required TResult Function(AppointmentEventGetByUser value) getByUser,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppointmentEventAdd value)? add,
    TResult? Function(AppointmentEventUpdate value)? update,
    TResult? Function(AppointmentEventDelete value)? delete,
    TResult? Function(AppointmentEventGetByUser value)? getByUser,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppointmentEventAdd value)? add,
    TResult Function(AppointmentEventUpdate value)? update,
    TResult Function(AppointmentEventDelete value)? delete,
    TResult Function(AppointmentEventGetByUser value)? getByUser,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class AppointmentEventDelete implements AppointmentEvent {
  const factory AppointmentEventDelete(final String appointmentId) =
      _$AppointmentEventDelete;

  String get appointmentId;
  @JsonKey(ignore: true)
  _$$AppointmentEventDeleteCopyWith<_$AppointmentEventDelete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppointmentEventGetByUserCopyWith<$Res> {
  factory _$$AppointmentEventGetByUserCopyWith(
          _$AppointmentEventGetByUser value,
          $Res Function(_$AppointmentEventGetByUser) then) =
      __$$AppointmentEventGetByUserCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$AppointmentEventGetByUserCopyWithImpl<$Res>
    extends _$AppointmentEventCopyWithImpl<$Res, _$AppointmentEventGetByUser>
    implements _$$AppointmentEventGetByUserCopyWith<$Res> {
  __$$AppointmentEventGetByUserCopyWithImpl(_$AppointmentEventGetByUser _value,
      $Res Function(_$AppointmentEventGetByUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$AppointmentEventGetByUser(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AppointmentEventGetByUser implements AppointmentEventGetByUser {
  const _$AppointmentEventGetByUser(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'AppointmentEvent.getByUser(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentEventGetByUser &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentEventGetByUserCopyWith<_$AppointmentEventGetByUser>
      get copyWith => __$$AppointmentEventGetByUserCopyWithImpl<
          _$AppointmentEventGetByUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppointmentForm appointmentForm) add,
    required TResult Function(
            AppointmentForm appointmentForm, String appointmentId)
        update,
    required TResult Function(String appointmentId) delete,
    required TResult Function(String userId) getByUser,
  }) {
    return getByUser(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppointmentForm appointmentForm)? add,
    TResult? Function(AppointmentForm appointmentForm, String appointmentId)?
        update,
    TResult? Function(String appointmentId)? delete,
    TResult? Function(String userId)? getByUser,
  }) {
    return getByUser?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppointmentForm appointmentForm)? add,
    TResult Function(AppointmentForm appointmentForm, String appointmentId)?
        update,
    TResult Function(String appointmentId)? delete,
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
    required TResult Function(AppointmentEventAdd value) add,
    required TResult Function(AppointmentEventUpdate value) update,
    required TResult Function(AppointmentEventDelete value) delete,
    required TResult Function(AppointmentEventGetByUser value) getByUser,
  }) {
    return getByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppointmentEventAdd value)? add,
    TResult? Function(AppointmentEventUpdate value)? update,
    TResult? Function(AppointmentEventDelete value)? delete,
    TResult? Function(AppointmentEventGetByUser value)? getByUser,
  }) {
    return getByUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppointmentEventAdd value)? add,
    TResult Function(AppointmentEventUpdate value)? update,
    TResult Function(AppointmentEventDelete value)? delete,
    TResult Function(AppointmentEventGetByUser value)? getByUser,
    required TResult orElse(),
  }) {
    if (getByUser != null) {
      return getByUser(this);
    }
    return orElse();
  }
}

abstract class AppointmentEventGetByUser implements AppointmentEvent {
  const factory AppointmentEventGetByUser(final String userId) =
      _$AppointmentEventGetByUser;

  String get userId;
  @JsonKey(ignore: true)
  _$$AppointmentEventGetByUserCopyWith<_$AppointmentEventGetByUser>
      get copyWith => throw _privateConstructorUsedError;
}
