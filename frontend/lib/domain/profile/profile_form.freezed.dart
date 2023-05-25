// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileForm {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;
  List<String> get followers => throw _privateConstructorUsedError;
  List<String> get following => throw _privateConstructorUsedError;
  List<String> get socialmedia => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileFormCopyWith<ProfileForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileFormCopyWith<$Res> {
  factory $ProfileFormCopyWith(
          ProfileForm value, $Res Function(ProfileForm) then) =
      _$ProfileFormCopyWithImpl<$Res, ProfileForm>;
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String bio,
      List<String> followers,
      List<String> following,
      List<String> socialmedia,
      String image});
}

/// @nodoc
class _$ProfileFormCopyWithImpl<$Res, $Val extends ProfileForm>
    implements $ProfileFormCopyWith<$Res> {
  _$ProfileFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? bio = null,
    Object? followers = null,
    Object? following = null,
    Object? socialmedia = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      followers: null == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      following: null == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as List<String>,
      socialmedia: null == socialmedia
          ? _value.socialmedia
          : socialmedia // ignore: cast_nullable_to_non_nullable
              as List<String>,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileFormCopyWith<$Res>
    implements $ProfileFormCopyWith<$Res> {
  factory _$$_ProfileFormCopyWith(
          _$_ProfileForm value, $Res Function(_$_ProfileForm) then) =
      __$$_ProfileFormCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String bio,
      List<String> followers,
      List<String> following,
      List<String> socialmedia,
      String image});
}

/// @nodoc
class __$$_ProfileFormCopyWithImpl<$Res>
    extends _$ProfileFormCopyWithImpl<$Res, _$_ProfileForm>
    implements _$$_ProfileFormCopyWith<$Res> {
  __$$_ProfileFormCopyWithImpl(
      _$_ProfileForm _value, $Res Function(_$_ProfileForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? bio = null,
    Object? followers = null,
    Object? following = null,
    Object? socialmedia = null,
    Object? image = null,
  }) {
    return _then(_$_ProfileForm(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      followers: null == followers
          ? _value._followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      following: null == following
          ? _value._following
          : following // ignore: cast_nullable_to_non_nullable
              as List<String>,
      socialmedia: null == socialmedia
          ? _value._socialmedia
          : socialmedia // ignore: cast_nullable_to_non_nullable
              as List<String>,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ProfileForm implements _ProfileForm {
  const _$_ProfileForm(
      {required this.firstName,
      required this.lastName,
      required this.bio,
      required final List<String> followers,
      required final List<String> following,
      required final List<String> socialmedia,
      required this.image})
      : _followers = followers,
        _following = following,
        _socialmedia = socialmedia;

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String bio;
  final List<String> _followers;
  @override
  List<String> get followers {
    if (_followers is EqualUnmodifiableListView) return _followers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_followers);
  }

  final List<String> _following;
  @override
  List<String> get following {
    if (_following is EqualUnmodifiableListView) return _following;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_following);
  }

  final List<String> _socialmedia;
  @override
  List<String> get socialmedia {
    if (_socialmedia is EqualUnmodifiableListView) return _socialmedia;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_socialmedia);
  }

  @override
  final String image;

  @override
  String toString() {
    return 'ProfileForm(firstName: $firstName, lastName: $lastName, bio: $bio, followers: $followers, following: $following, socialmedia: $socialmedia, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileForm &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            const DeepCollectionEquality()
                .equals(other._followers, _followers) &&
            const DeepCollectionEquality()
                .equals(other._following, _following) &&
            const DeepCollectionEquality()
                .equals(other._socialmedia, _socialmedia) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      firstName,
      lastName,
      bio,
      const DeepCollectionEquality().hash(_followers),
      const DeepCollectionEquality().hash(_following),
      const DeepCollectionEquality().hash(_socialmedia),
      image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileFormCopyWith<_$_ProfileForm> get copyWith =>
      __$$_ProfileFormCopyWithImpl<_$_ProfileForm>(this, _$identity);
}

abstract class _ProfileForm implements ProfileForm {
  const factory _ProfileForm(
      {required final String firstName,
      required final String lastName,
      required final String bio,
      required final List<String> followers,
      required final List<String> following,
      required final List<String> socialmedia,
      required final String image}) = _$_ProfileForm;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get bio;
  @override
  List<String> get followers;
  @override
  List<String> get following;
  @override
  List<String> get socialmedia;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileFormCopyWith<_$_ProfileForm> get copyWith =>
      throw _privateConstructorUsedError;
}
