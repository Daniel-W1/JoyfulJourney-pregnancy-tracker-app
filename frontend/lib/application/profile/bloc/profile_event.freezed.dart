// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEvent {
  String get profileId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProfileForm profileForm, String profileId) update,
    required TResult Function(String profileId) getProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProfileForm profileForm, String profileId)? update,
    TResult? Function(String profileId)? getProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProfileForm profileForm, String profileId)? update,
    TResult Function(String profileId)? getProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileEventUpdate value) update,
    required TResult Function(ProfileEventGetProfile value) getProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileEventUpdate value)? update,
    TResult? Function(ProfileEventGetProfile value)? getProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileEventUpdate value)? update,
    TResult Function(ProfileEventGetProfile value)? getProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileEventCopyWith<ProfileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
  @useResult
  $Res call({String profileId});
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileId = null,
  }) {
    return _then(_value.copyWith(
      profileId: null == profileId
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileEventUpdateCopyWith<$Res>
    implements $ProfileEventCopyWith<$Res> {
  factory _$$ProfileEventUpdateCopyWith(_$ProfileEventUpdate value,
          $Res Function(_$ProfileEventUpdate) then) =
      __$$ProfileEventUpdateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProfileForm profileForm, String profileId});

  $ProfileFormCopyWith<$Res> get profileForm;
}

/// @nodoc
class __$$ProfileEventUpdateCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ProfileEventUpdate>
    implements _$$ProfileEventUpdateCopyWith<$Res> {
  __$$ProfileEventUpdateCopyWithImpl(
      _$ProfileEventUpdate _value, $Res Function(_$ProfileEventUpdate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileForm = null,
    Object? profileId = null,
  }) {
    return _then(_$ProfileEventUpdate(
      profileForm: null == profileForm
          ? _value.profileForm
          : profileForm // ignore: cast_nullable_to_non_nullable
              as ProfileForm,
      profileId: null == profileId
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileFormCopyWith<$Res> get profileForm {
    return $ProfileFormCopyWith<$Res>(_value.profileForm, (value) {
      return _then(_value.copyWith(profileForm: value));
    });
  }
}

/// @nodoc

class _$ProfileEventUpdate implements ProfileEventUpdate {
  const _$ProfileEventUpdate(
      {required this.profileForm, required this.profileId});

  @override
  final ProfileForm profileForm;
  @override
  final String profileId;

  @override
  String toString() {
    return 'ProfileEvent.update(profileForm: $profileForm, profileId: $profileId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileEventUpdate &&
            (identical(other.profileForm, profileForm) ||
                other.profileForm == profileForm) &&
            (identical(other.profileId, profileId) ||
                other.profileId == profileId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profileForm, profileId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileEventUpdateCopyWith<_$ProfileEventUpdate> get copyWith =>
      __$$ProfileEventUpdateCopyWithImpl<_$ProfileEventUpdate>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProfileForm profileForm, String profileId) update,
    required TResult Function(String profileId) getProfile,
  }) {
    return update(profileForm, profileId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProfileForm profileForm, String profileId)? update,
    TResult? Function(String profileId)? getProfile,
  }) {
    return update?.call(profileForm, profileId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProfileForm profileForm, String profileId)? update,
    TResult Function(String profileId)? getProfile,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(profileForm, profileId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileEventUpdate value) update,
    required TResult Function(ProfileEventGetProfile value) getProfile,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileEventUpdate value)? update,
    TResult? Function(ProfileEventGetProfile value)? getProfile,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileEventUpdate value)? update,
    TResult Function(ProfileEventGetProfile value)? getProfile,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class ProfileEventUpdate implements ProfileEvent {
  const factory ProfileEventUpdate(
      {required final ProfileForm profileForm,
      required final String profileId}) = _$ProfileEventUpdate;

  ProfileForm get profileForm;
  @override
  String get profileId;
  @override
  @JsonKey(ignore: true)
  _$$ProfileEventUpdateCopyWith<_$ProfileEventUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileEventGetProfileCopyWith<$Res>
    implements $ProfileEventCopyWith<$Res> {
  factory _$$ProfileEventGetProfileCopyWith(_$ProfileEventGetProfile value,
          $Res Function(_$ProfileEventGetProfile) then) =
      __$$ProfileEventGetProfileCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String profileId});
}

/// @nodoc
class __$$ProfileEventGetProfileCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ProfileEventGetProfile>
    implements _$$ProfileEventGetProfileCopyWith<$Res> {
  __$$ProfileEventGetProfileCopyWithImpl(_$ProfileEventGetProfile _value,
      $Res Function(_$ProfileEventGetProfile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileId = null,
  }) {
    return _then(_$ProfileEventGetProfile(
      profileId: null == profileId
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProfileEventGetProfile implements ProfileEventGetProfile {
  const _$ProfileEventGetProfile({required this.profileId});

  @override
  final String profileId;

  @override
  String toString() {
    return 'ProfileEvent.getProfile(profileId: $profileId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileEventGetProfile &&
            (identical(other.profileId, profileId) ||
                other.profileId == profileId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profileId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileEventGetProfileCopyWith<_$ProfileEventGetProfile> get copyWith =>
      __$$ProfileEventGetProfileCopyWithImpl<_$ProfileEventGetProfile>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProfileForm profileForm, String profileId) update,
    required TResult Function(String profileId) getProfile,
  }) {
    return getProfile(profileId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProfileForm profileForm, String profileId)? update,
    TResult? Function(String profileId)? getProfile,
  }) {
    return getProfile?.call(profileId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProfileForm profileForm, String profileId)? update,
    TResult Function(String profileId)? getProfile,
    required TResult orElse(),
  }) {
    if (getProfile != null) {
      return getProfile(profileId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileEventUpdate value) update,
    required TResult Function(ProfileEventGetProfile value) getProfile,
  }) {
    return getProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileEventUpdate value)? update,
    TResult? Function(ProfileEventGetProfile value)? getProfile,
  }) {
    return getProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileEventUpdate value)? update,
    TResult Function(ProfileEventGetProfile value)? getProfile,
    required TResult orElse(),
  }) {
    if (getProfile != null) {
      return getProfile(this);
    }
    return orElse();
  }
}

abstract class ProfileEventGetProfile implements ProfileEvent {
  const factory ProfileEventGetProfile({required final String profileId}) =
      _$ProfileEventGetProfile;

  @override
  String get profileId;
  @override
  @JsonKey(ignore: true)
  _$$ProfileEventGetProfileCopyWith<_$ProfileEventGetProfile> get copyWith =>
      throw _privateConstructorUsedError;
}
