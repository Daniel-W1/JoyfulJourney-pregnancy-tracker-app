// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ProfileDomain profile) success,
    required TResult Function(ProfileFailure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProfileDomain profile)? success,
    TResult? Function(ProfileFailure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProfileDomain profile)? success,
    TResult Function(ProfileFailure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileStateInitial value) initial,
    required TResult Function(ProfileStateLoading value) loading,
    required TResult Function(ProfileStateSuccess value) success,
    required TResult Function(ProfileStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateInitial value)? initial,
    TResult? Function(ProfileStateLoading value)? loading,
    TResult? Function(ProfileStateSuccess value)? success,
    TResult? Function(ProfileStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileStateInitial value)? initial,
    TResult Function(ProfileStateLoading value)? loading,
    TResult Function(ProfileStateSuccess value)? success,
    TResult Function(ProfileStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProfileStateInitialCopyWith<$Res> {
  factory _$$ProfileStateInitialCopyWith(_$ProfileStateInitial value,
          $Res Function(_$ProfileStateInitial) then) =
      __$$ProfileStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileStateInitialCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateInitial>
    implements _$$ProfileStateInitialCopyWith<$Res> {
  __$$ProfileStateInitialCopyWithImpl(
      _$ProfileStateInitial _value, $Res Function(_$ProfileStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileStateInitial implements ProfileStateInitial {
  const _$ProfileStateInitial();

  @override
  String toString() {
    return 'ProfileState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ProfileDomain profile) success,
    required TResult Function(ProfileFailure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProfileDomain profile)? success,
    TResult? Function(ProfileFailure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProfileDomain profile)? success,
    TResult Function(ProfileFailure failure)? failure,
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
    required TResult Function(ProfileStateInitial value) initial,
    required TResult Function(ProfileStateLoading value) loading,
    required TResult Function(ProfileStateSuccess value) success,
    required TResult Function(ProfileStateFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateInitial value)? initial,
    TResult? Function(ProfileStateLoading value)? loading,
    TResult? Function(ProfileStateSuccess value)? success,
    TResult? Function(ProfileStateFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileStateInitial value)? initial,
    TResult Function(ProfileStateLoading value)? loading,
    TResult Function(ProfileStateSuccess value)? success,
    TResult Function(ProfileStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ProfileStateInitial implements ProfileState {
  const factory ProfileStateInitial() = _$ProfileStateInitial;
}

/// @nodoc
abstract class _$$ProfileStateLoadingCopyWith<$Res> {
  factory _$$ProfileStateLoadingCopyWith(_$ProfileStateLoading value,
          $Res Function(_$ProfileStateLoading) then) =
      __$$ProfileStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileStateLoadingCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateLoading>
    implements _$$ProfileStateLoadingCopyWith<$Res> {
  __$$ProfileStateLoadingCopyWithImpl(
      _$ProfileStateLoading _value, $Res Function(_$ProfileStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileStateLoading implements ProfileStateLoading {
  const _$ProfileStateLoading();

  @override
  String toString() {
    return 'ProfileState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ProfileDomain profile) success,
    required TResult Function(ProfileFailure failure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProfileDomain profile)? success,
    TResult? Function(ProfileFailure failure)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProfileDomain profile)? success,
    TResult Function(ProfileFailure failure)? failure,
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
    required TResult Function(ProfileStateInitial value) initial,
    required TResult Function(ProfileStateLoading value) loading,
    required TResult Function(ProfileStateSuccess value) success,
    required TResult Function(ProfileStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateInitial value)? initial,
    TResult? Function(ProfileStateLoading value)? loading,
    TResult? Function(ProfileStateSuccess value)? success,
    TResult? Function(ProfileStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileStateInitial value)? initial,
    TResult Function(ProfileStateLoading value)? loading,
    TResult Function(ProfileStateSuccess value)? success,
    TResult Function(ProfileStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProfileStateLoading implements ProfileState {
  const factory ProfileStateLoading() = _$ProfileStateLoading;
}

/// @nodoc
abstract class _$$ProfileStateSuccessCopyWith<$Res> {
  factory _$$ProfileStateSuccessCopyWith(_$ProfileStateSuccess value,
          $Res Function(_$ProfileStateSuccess) then) =
      __$$ProfileStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({ProfileDomain profile});
}

/// @nodoc
class __$$ProfileStateSuccessCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateSuccess>
    implements _$$ProfileStateSuccessCopyWith<$Res> {
  __$$ProfileStateSuccessCopyWithImpl(
      _$ProfileStateSuccess _value, $Res Function(_$ProfileStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_$ProfileStateSuccess(
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileDomain,
    ));
  }
}

/// @nodoc

class _$ProfileStateSuccess implements ProfileStateSuccess {
  const _$ProfileStateSuccess({required this.profile});

  @override
  final ProfileDomain profile;

  @override
  String toString() {
    return 'ProfileState.success(profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateSuccess &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateSuccessCopyWith<_$ProfileStateSuccess> get copyWith =>
      __$$ProfileStateSuccessCopyWithImpl<_$ProfileStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ProfileDomain profile) success,
    required TResult Function(ProfileFailure failure) failure,
  }) {
    return success(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProfileDomain profile)? success,
    TResult? Function(ProfileFailure failure)? failure,
  }) {
    return success?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProfileDomain profile)? success,
    TResult Function(ProfileFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileStateInitial value) initial,
    required TResult Function(ProfileStateLoading value) loading,
    required TResult Function(ProfileStateSuccess value) success,
    required TResult Function(ProfileStateFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateInitial value)? initial,
    TResult? Function(ProfileStateLoading value)? loading,
    TResult? Function(ProfileStateSuccess value)? success,
    TResult? Function(ProfileStateFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileStateInitial value)? initial,
    TResult Function(ProfileStateLoading value)? loading,
    TResult Function(ProfileStateSuccess value)? success,
    TResult Function(ProfileStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ProfileStateSuccess implements ProfileState {
  const factory ProfileStateSuccess({required final ProfileDomain profile}) =
      _$ProfileStateSuccess;

  ProfileDomain get profile;
  @JsonKey(ignore: true)
  _$$ProfileStateSuccessCopyWith<_$ProfileStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileStateFailureCopyWith<$Res> {
  factory _$$ProfileStateFailureCopyWith(_$ProfileStateFailure value,
          $Res Function(_$ProfileStateFailure) then) =
      __$$ProfileStateFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({ProfileFailure failure});

  $ProfileFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$ProfileStateFailureCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateFailure>
    implements _$$ProfileStateFailureCopyWith<$Res> {
  __$$ProfileStateFailureCopyWithImpl(
      _$ProfileStateFailure _value, $Res Function(_$ProfileStateFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$ProfileStateFailure(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ProfileFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileFailureCopyWith<$Res> get failure {
    return $ProfileFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$ProfileStateFailure implements ProfileStateFailure {
  const _$ProfileStateFailure({required this.failure});

  @override
  final ProfileFailure failure;

  @override
  String toString() {
    return 'ProfileState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateFailureCopyWith<_$ProfileStateFailure> get copyWith =>
      __$$ProfileStateFailureCopyWithImpl<_$ProfileStateFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ProfileDomain profile) success,
    required TResult Function(ProfileFailure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProfileDomain profile)? success,
    TResult? Function(ProfileFailure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProfileDomain profile)? success,
    TResult Function(ProfileFailure failure)? failure,
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
    required TResult Function(ProfileStateInitial value) initial,
    required TResult Function(ProfileStateLoading value) loading,
    required TResult Function(ProfileStateSuccess value) success,
    required TResult Function(ProfileStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateInitial value)? initial,
    TResult? Function(ProfileStateLoading value)? loading,
    TResult? Function(ProfileStateSuccess value)? success,
    TResult? Function(ProfileStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileStateInitial value)? initial,
    TResult Function(ProfileStateLoading value)? loading,
    TResult Function(ProfileStateSuccess value)? success,
    TResult Function(ProfileStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ProfileStateFailure implements ProfileState {
  const factory ProfileStateFailure({required final ProfileFailure failure}) =
      _$ProfileStateFailure;

  ProfileFailure get failure;
  @JsonKey(ignore: true)
  _$$ProfileStateFailureCopyWith<_$ProfileStateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
