// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_profile_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditProfileForm {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;
  String get profilePicture => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditProfileFormCopyWith<EditProfileForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileFormCopyWith<$Res> {
  factory $EditProfileFormCopyWith(
          EditProfileForm value, $Res Function(EditProfileForm) then) =
      _$EditProfileFormCopyWithImpl<$Res, EditProfileForm>;
  @useResult
  $Res call({String name, String email, String bio, String profilePicture});
}

/// @nodoc
class _$EditProfileFormCopyWithImpl<$Res, $Val extends EditProfileForm>
    implements $EditProfileFormCopyWith<$Res> {
  _$EditProfileFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? bio = null,
    Object? profilePicture = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: null == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EditProfileFormCopyWith<$Res>
    implements $EditProfileFormCopyWith<$Res> {
  factory _$$_EditProfileFormCopyWith(
          _$_EditProfileForm value, $Res Function(_$_EditProfileForm) then) =
      __$$_EditProfileFormCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String email, String bio, String profilePicture});
}

/// @nodoc
class __$$_EditProfileFormCopyWithImpl<$Res>
    extends _$EditProfileFormCopyWithImpl<$Res, _$_EditProfileForm>
    implements _$$_EditProfileFormCopyWith<$Res> {
  __$$_EditProfileFormCopyWithImpl(
      _$_EditProfileForm _value, $Res Function(_$_EditProfileForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? bio = null,
    Object? profilePicture = null,
  }) {
    return _then(_$_EditProfileForm(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: null == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EditProfileForm implements _EditProfileForm {
  const _$_EditProfileForm(
      {required this.name,
      required this.email,
      required this.bio,
      required this.profilePicture});

  @override
  final String name;
  @override
  final String email;
  @override
  final String bio;
  @override
  final String profilePicture;

  @override
  String toString() {
    return 'EditProfileForm(name: $name, email: $email, bio: $bio, profilePicture: $profilePicture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditProfileForm &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, email, bio, profilePicture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditProfileFormCopyWith<_$_EditProfileForm> get copyWith =>
      __$$_EditProfileFormCopyWithImpl<_$_EditProfileForm>(this, _$identity);
}

abstract class _EditProfileForm implements EditProfileForm {
  const factory _EditProfileForm(
      {required final String name,
      required final String email,
      required final String bio,
      required final String profilePicture}) = _$_EditProfileForm;

  @override
  String get name;
  @override
  String get email;
  @override
  String get bio;
  @override
  String get profilePicture;
  @override
  @JsonKey(ignore: true)
  _$$_EditProfileFormCopyWith<_$_EditProfileForm> get copyWith =>
      throw _privateConstructorUsedError;
}
