// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NoteForm {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteFormCopyWith<NoteForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteFormCopyWith<$Res> {
  factory $NoteFormCopyWith(NoteForm value, $Res Function(NoteForm) then) =
      _$NoteFormCopyWithImpl<$Res, NoteForm>;
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class _$NoteFormCopyWithImpl<$Res, $Val extends NoteForm>
    implements $NoteFormCopyWith<$Res> {
  _$NoteFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NoteFormCopyWith<$Res> implements $NoteFormCopyWith<$Res> {
  factory _$$_NoteFormCopyWith(
          _$_NoteForm value, $Res Function(_$_NoteForm) then) =
      __$$_NoteFormCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class __$$_NoteFormCopyWithImpl<$Res>
    extends _$NoteFormCopyWithImpl<$Res, _$_NoteForm>
    implements _$$_NoteFormCopyWith<$Res> {
  __$$_NoteFormCopyWithImpl(
      _$_NoteForm _value, $Res Function(_$_NoteForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$_NoteForm(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NoteForm implements _NoteForm {
  _$_NoteForm({required this.title, required this.description});

  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'NoteForm(title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoteForm &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoteFormCopyWith<_$_NoteForm> get copyWith =>
      __$$_NoteFormCopyWithImpl<_$_NoteForm>(this, _$identity);
}

abstract class _NoteForm implements NoteForm {
  factory _NoteForm(
      {required final String title,
      required final String description}) = _$_NoteForm;

  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_NoteFormCopyWith<_$_NoteForm> get copyWith =>
      throw _privateConstructorUsedError;
}
