// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_form_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NoteFormDto _$NoteFormDtoFromJson(Map<String, dynamic> json) {
  return _NoteFormDto.fromJson(json);
}

/// @nodoc
mixin _$NoteFormDto {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteFormDtoCopyWith<NoteFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteFormDtoCopyWith<$Res> {
  factory $NoteFormDtoCopyWith(
          NoteFormDto value, $Res Function(NoteFormDto) then) =
      _$NoteFormDtoCopyWithImpl<$Res, NoteFormDto>;
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class _$NoteFormDtoCopyWithImpl<$Res, $Val extends NoteFormDto>
    implements $NoteFormDtoCopyWith<$Res> {
  _$NoteFormDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$_NoteFormDtoCopyWith<$Res>
    implements $NoteFormDtoCopyWith<$Res> {
  factory _$$_NoteFormDtoCopyWith(
          _$_NoteFormDto value, $Res Function(_$_NoteFormDto) then) =
      __$$_NoteFormDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class __$$_NoteFormDtoCopyWithImpl<$Res>
    extends _$NoteFormDtoCopyWithImpl<$Res, _$_NoteFormDto>
    implements _$$_NoteFormDtoCopyWith<$Res> {
  __$$_NoteFormDtoCopyWithImpl(
      _$_NoteFormDto _value, $Res Function(_$_NoteFormDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$_NoteFormDto(
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
@JsonSerializable()
class _$_NoteFormDto implements _NoteFormDto {
  const _$_NoteFormDto({required this.title, required this.description});

  factory _$_NoteFormDto.fromJson(Map<String, dynamic> json) =>
      _$$_NoteFormDtoFromJson(json);

  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'NoteFormDto(title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoteFormDto &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoteFormDtoCopyWith<_$_NoteFormDto> get copyWith =>
      __$$_NoteFormDtoCopyWithImpl<_$_NoteFormDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoteFormDtoToJson(
      this,
    );
  }
}

abstract class _NoteFormDto implements NoteFormDto {
  const factory _NoteFormDto(
      {required final String title,
      required final String description}) = _$_NoteFormDto;

  factory _NoteFormDto.fromJson(Map<String, dynamic> json) =
      _$_NoteFormDto.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_NoteFormDtoCopyWith<_$_NoteFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}
