// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppointmentDto _$AppointmentDtoFromJson(Map<String, dynamic> json) {
  return _AppointmentDto.fromJson(json);
}

/// @nodoc
mixin _$AppointmentDto {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  String get user_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppointmentDtoCopyWith<AppointmentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentDtoCopyWith<$Res> {
  factory $AppointmentDtoCopyWith(
          AppointmentDto value, $Res Function(AppointmentDto) then) =
      _$AppointmentDtoCopyWithImpl<$Res, AppointmentDto>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String date,
      String time,
      String user_id});
}

/// @nodoc
class _$AppointmentDtoCopyWithImpl<$Res, $Val extends AppointmentDto>
    implements $AppointmentDtoCopyWith<$Res> {
  _$AppointmentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? date = null,
    Object? time = null,
    Object? user_id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppointmentDtoCopyWith<$Res>
    implements $AppointmentDtoCopyWith<$Res> {
  factory _$$_AppointmentDtoCopyWith(
          _$_AppointmentDto value, $Res Function(_$_AppointmentDto) then) =
      __$$_AppointmentDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String date,
      String time,
      String user_id});
}

/// @nodoc
class __$$_AppointmentDtoCopyWithImpl<$Res>
    extends _$AppointmentDtoCopyWithImpl<$Res, _$_AppointmentDto>
    implements _$$_AppointmentDtoCopyWith<$Res> {
  __$$_AppointmentDtoCopyWithImpl(
      _$_AppointmentDto _value, $Res Function(_$_AppointmentDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? date = null,
    Object? time = null,
    Object? user_id = null,
  }) {
    return _then(_$_AppointmentDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppointmentDto implements _AppointmentDto {
  const _$_AppointmentDto(
      {required this.id,
      required this.title,
      required this.description,
      required this.date,
      required this.time,
      required this.user_id});

  factory _$_AppointmentDto.fromJson(Map<String, dynamic> json) =>
      _$$_AppointmentDtoFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String date;
  @override
  final String time;
  @override
  final String user_id;

  @override
  String toString() {
    return 'AppointmentDto(id: $id, title: $title, description: $description, date: $date, time: $time, user_id: $user_id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppointmentDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.user_id, user_id) || other.user_id == user_id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, date, time, user_id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppointmentDtoCopyWith<_$_AppointmentDto> get copyWith =>
      __$$_AppointmentDtoCopyWithImpl<_$_AppointmentDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppointmentDtoToJson(
      this,
    );
  }
}

abstract class _AppointmentDto implements AppointmentDto {
  const factory _AppointmentDto(
      {required final String id,
      required final String title,
      required final String description,
      required final String date,
      required final String time,
      required final String user_id}) = _$_AppointmentDto;

  factory _AppointmentDto.fromJson(Map<String, dynamic> json) =
      _$_AppointmentDto.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get date;
  @override
  String get time;
  @override
  String get user_id;
  @override
  @JsonKey(ignore: true)
  _$$_AppointmentDtoCopyWith<_$_AppointmentDto> get copyWith =>
      throw _privateConstructorUsedError;
}
