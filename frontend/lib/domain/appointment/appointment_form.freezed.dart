// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppointmentForm {
  String get title => throw _privateConstructorUsedError;
  String get description =>
      throw _privateConstructorUsedError; //TODO: Change to image
  bool get date => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  String get gmt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppointmentFormCopyWith<AppointmentForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentFormCopyWith<$Res> {
  factory $AppointmentFormCopyWith(
          AppointmentForm value, $Res Function(AppointmentForm) then) =
      _$AppointmentFormCopyWithImpl<$Res, AppointmentForm>;
  @useResult
  $Res call(
      {String title, String description, bool date, String time, String gmt});
}

/// @nodoc
class _$AppointmentFormCopyWithImpl<$Res, $Val extends AppointmentForm>
    implements $AppointmentFormCopyWith<$Res> {
  _$AppointmentFormCopyWithImpl(this._value, this._then);

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
    Object? gmt = null,
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
              as bool,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      gmt: null == gmt
          ? _value.gmt
          : gmt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppointmentFormCopyWith<$Res>
    implements $AppointmentFormCopyWith<$Res> {
  factory _$$_AppointmentFormCopyWith(
          _$_AppointmentForm value, $Res Function(_$_AppointmentForm) then) =
      __$$_AppointmentFormCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title, String description, bool date, String time, String gmt});
}

/// @nodoc
class __$$_AppointmentFormCopyWithImpl<$Res>
    extends _$AppointmentFormCopyWithImpl<$Res, _$_AppointmentForm>
    implements _$$_AppointmentFormCopyWith<$Res> {
  __$$_AppointmentFormCopyWithImpl(
      _$_AppointmentForm _value, $Res Function(_$_AppointmentForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? date = null,
    Object? time = null,
    Object? gmt = null,
  }) {
    return _then(_$_AppointmentForm(
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
              as bool,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      gmt: null == gmt
          ? _value.gmt
          : gmt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AppointmentForm implements _AppointmentForm {
  _$_AppointmentForm(
      {required this.title,
      required this.description,
      required this.date,
      required this.time,
      required this.gmt});

  @override
  final String title;
  @override
  final String description;
//TODO: Change to image
  @override
  final bool date;
  @override
  final String time;
  @override
  final String gmt;

  @override
  String toString() {
    return 'AppointmentForm(title: $title, description: $description, date: $date, time: $time, gmt: $gmt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppointmentForm &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.gmt, gmt) || other.gmt == gmt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, description, date, time, gmt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppointmentFormCopyWith<_$_AppointmentForm> get copyWith =>
      __$$_AppointmentFormCopyWithImpl<_$_AppointmentForm>(this, _$identity);
}

abstract class _AppointmentForm implements AppointmentForm {
  factory _AppointmentForm(
      {required final String title,
      required final String description,
      required final bool date,
      required final String time,
      required final String gmt}) = _$_AppointmentForm;

  @override
  String get title;
  @override
  String get description;
  @override //TODO: Change to image
  bool get date;
  @override
  String get time;
  @override
  String get gmt;
  @override
  @JsonKey(ignore: true)
  _$$_AppointmentFormCopyWith<_$_AppointmentForm> get copyWith =>
      throw _privateConstructorUsedError;
}
