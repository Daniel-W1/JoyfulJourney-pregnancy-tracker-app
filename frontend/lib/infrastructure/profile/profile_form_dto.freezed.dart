// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_form_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileFormDto _$ProfileFormDtoFromJson(Map<String, dynamic> json) {
  return _ProfileFormDto.fromJson(json);
}

/// @nodoc
mixin _$ProfileFormDto {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;
  List<String> get followers => throw _privateConstructorUsedError;
  List<String> get following => throw _privateConstructorUsedError;
  List<String> get socialmedias => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileFormDtoCopyWith<ProfileFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileFormDtoCopyWith<$Res> {
  factory $ProfileFormDtoCopyWith(
          ProfileFormDto value, $Res Function(ProfileFormDto) then) =
      _$ProfileFormDtoCopyWithImpl<$Res, ProfileFormDto>;
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String image,
      String bio,
      List<String> followers,
      List<String> following,
      List<String> socialmedias});
}

/// @nodoc
class _$ProfileFormDtoCopyWithImpl<$Res, $Val extends ProfileFormDto>
    implements $ProfileFormDtoCopyWith<$Res> {
  _$ProfileFormDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? image = null,
    Object? bio = null,
    Object? followers = null,
    Object? following = null,
    Object? socialmedias = null,
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
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
      socialmedias: null == socialmedias
          ? _value.socialmedias
          : socialmedias // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileFormDtoCopyWith<$Res>
    implements $ProfileFormDtoCopyWith<$Res> {
  factory _$$_ProfileFormDtoCopyWith(
          _$_ProfileFormDto value, $Res Function(_$_ProfileFormDto) then) =
      __$$_ProfileFormDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String image,
      String bio,
      List<String> followers,
      List<String> following,
      List<String> socialmedias});
}

/// @nodoc
class __$$_ProfileFormDtoCopyWithImpl<$Res>
    extends _$ProfileFormDtoCopyWithImpl<$Res, _$_ProfileFormDto>
    implements _$$_ProfileFormDtoCopyWith<$Res> {
  __$$_ProfileFormDtoCopyWithImpl(
      _$_ProfileFormDto _value, $Res Function(_$_ProfileFormDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? image = null,
    Object? bio = null,
    Object? followers = null,
    Object? following = null,
    Object? socialmedias = null,
  }) {
    return _then(_$_ProfileFormDto(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
      socialmedias: null == socialmedias
          ? _value._socialmedias
          : socialmedias // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileFormDto implements _ProfileFormDto {
  const _$_ProfileFormDto(
      {required this.firstName,
      required this.lastName,
      required this.image,
      required this.bio,
      required final List<String> followers,
      required final List<String> following,
      required final List<String> socialmedias})
      : _followers = followers,
        _following = following,
        _socialmedias = socialmedias;

  factory _$_ProfileFormDto.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileFormDtoFromJson(json);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String image;
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

  final List<String> _socialmedias;
  @override
  List<String> get socialmedias {
    if (_socialmedias is EqualUnmodifiableListView) return _socialmedias;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_socialmedias);
  }

  @override
  String toString() {
    return 'ProfileFormDto(firstName: $firstName, lastName: $lastName, image: $image, bio: $bio, followers: $followers, following: $following, socialmedias: $socialmedias)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileFormDto &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            const DeepCollectionEquality()
                .equals(other._followers, _followers) &&
            const DeepCollectionEquality()
                .equals(other._following, _following) &&
            const DeepCollectionEquality()
                .equals(other._socialmedias, _socialmedias));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      firstName,
      lastName,
      image,
      bio,
      const DeepCollectionEquality().hash(_followers),
      const DeepCollectionEquality().hash(_following),
      const DeepCollectionEquality().hash(_socialmedias));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileFormDtoCopyWith<_$_ProfileFormDto> get copyWith =>
      __$$_ProfileFormDtoCopyWithImpl<_$_ProfileFormDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileFormDtoToJson(
      this,
    );
  }
}

abstract class _ProfileFormDto implements ProfileFormDto {
  const factory _ProfileFormDto(
      {required final String firstName,
      required final String lastName,
      required final String image,
      required final String bio,
      required final List<String> followers,
      required final List<String> following,
      required final List<String> socialmedias}) = _$_ProfileFormDto;

  factory _ProfileFormDto.fromJson(Map<String, dynamic> json) =
      _$_ProfileFormDto.fromJson;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get image;
  @override
  String get bio;
  @override
  List<String> get followers;
  @override
  List<String> get following;
  @override
  List<String> get socialmedias;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileFormDtoCopyWith<_$_ProfileFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}
