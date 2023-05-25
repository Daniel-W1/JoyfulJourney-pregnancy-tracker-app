// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_form_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppointmentFormDto _$AppointmentFormDtoFromJson(Map<String, dynamic> json) {
  return _AppointmentFormDto.fromJson(json);
}

/// @nodoc
mixin _$AppointmentFormDto {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppointmentFormDtoCopyWith<AppointmentFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentFormDtoCopyWith<$Res> {
  factory $AppointmentFormDtoCopyWith(
          AppointmentFormDto value, $Res Function(AppointmentFormDto) then) =
      _$AppointmentFormDtoCopyWithImpl<$Res, AppointmentFormDto>;
  @useResult
  $Res call({String title, String description, String date, String time});
}

/// @nodoc
class _$AppointmentFormDtoCopyWithImpl<$Res, $Val extends AppointmentFormDto>
    implements $AppointmentFormDtoCopyWith<$Res> {
  _$AppointmentFormDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? date = null,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppointmentFormDtoCopyWith<$Res>
    implements $AppointmentFormDtoCopyWith<$Res> {
  factory _$$_AppointmentFormDtoCopyWith(_$_AppointmentFormDto value,
          $Res Function(_$_AppointmentFormDto) then) =
      __$$_AppointmentFormDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description, String date, String time});
}

/// @nodoc
class __$$_AppointmentFormDtoCopyWithImpl<$Res>
    extends _$AppointmentFormDtoCopyWithImpl<$Res, _$_AppointmentFormDto>
    implements _$$_AppointmentFormDtoCopyWith<$Res> {
  __$$_AppointmentFormDtoCopyWithImpl(
      _$_AppointmentFormDto _value, $Res Function(_$_AppointmentFormDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? date = null,
    Object? time = null,
  }) {
    return _then(_$_AppointmentFormDto(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppointmentFormDto implements _AppointmentFormDto {
  const _$_AppointmentFormDto(
      {required this.title,
      required this.description,
      required this.date,
      required this.time});

  factory _$_AppointmentFormDto.fromJson(Map<String, dynamic> json) =>
      _$$_AppointmentFormDtoFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final String date;
  @override
  final String time;

  @override
  String toString() {
    return 'AppointmentFormDto(title: $title, description: $description, date: $date, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppointmentFormDto &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, date, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppointmentFormDtoCopyWith<_$_AppointmentFormDto> get copyWith =>
      __$$_AppointmentFormDtoCopyWithImpl<_$_AppointmentFormDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppointmentFormDtoToJson(
      this,
    );
  }
}

abstract class _AppointmentFormDto implements AppointmentFormDto {
  const factory _AppointmentFormDto(
      {required final String title,
      required final String description,
      required final String date,
      required final String time}) = _$_AppointmentFormDto;

  factory _AppointmentFormDto.fromJson(Map<String, dynamic> json) =
      _$_AppointmentFormDto.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  String get date;
  @override
  String get time;
  @override
  @JsonKey(ignore: true)
  _$$_AppointmentFormDtoCopyWith<_$_AppointmentFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}
