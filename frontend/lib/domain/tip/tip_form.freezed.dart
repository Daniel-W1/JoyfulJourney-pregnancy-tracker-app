// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tip_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TipForm {
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TipFormCopyWith<TipForm> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TipFormCopyWith<$Res> {
  factory $TipFormCopyWith(TipForm value, $Res Function(TipForm) then) =
      _$TipFormCopyWithImpl<$Res, TipForm>;
  @useResult
  $Res call({String title, String body, String type});
}

/// @nodoc
class _$TipFormCopyWithImpl<$Res, $Val extends TipForm>
    implements $TipFormCopyWith<$Res> {
  _$TipFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TipFormCopyWith<$Res> implements $TipFormCopyWith<$Res> {
  factory _$$_TipFormCopyWith(
          _$_TipForm value, $Res Function(_$_TipForm) then) =
      __$$_TipFormCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String body, String type});
}

/// @nodoc
class __$$_TipFormCopyWithImpl<$Res>
    extends _$TipFormCopyWithImpl<$Res, _$_TipForm>
    implements _$$_TipFormCopyWith<$Res> {
  __$$_TipFormCopyWithImpl(_$_TipForm _value, $Res Function(_$_TipForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
    Object? type = null,
  }) {
    return _then(_$_TipForm(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TipForm implements _TipForm {
  const _$_TipForm(
      {required this.title, required this.body, required this.type});

  @override
  final String title;
  @override
  final String body;
  @override
  final String type;

  @override
  String toString() {
    return 'TipForm(title: $title, body: $body, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TipForm &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, body, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TipFormCopyWith<_$_TipForm> get copyWith =>
      __$$_TipFormCopyWithImpl<_$_TipForm>(this, _$identity);
}

abstract class _TipForm implements TipForm {
  const factory _TipForm(
      {required final String title,
      required final String body,
      required final String type}) = _$_TipForm;

  @override
  String get title;
  @override
  String get body;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_TipFormCopyWith<_$_TipForm> get copyWith =>
      throw _privateConstructorUsedError;
}
