// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CommentForm {
  String get description =>
      throw _privateConstructorUsedError; //TODO: Change to image
  String get postid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentFormCopyWith<CommentForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentFormCopyWith<$Res> {
  factory $CommentFormCopyWith(
          CommentForm value, $Res Function(CommentForm) then) =
      _$CommentFormCopyWithImpl<$Res, CommentForm>;
  @useResult
  $Res call({String description, String postid});
}

/// @nodoc
class _$CommentFormCopyWithImpl<$Res, $Val extends CommentForm>
    implements $CommentFormCopyWith<$Res> {
  _$CommentFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? postid = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      postid: null == postid
          ? _value.postid
          : postid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommentFormCopyWith<$Res>
    implements $CommentFormCopyWith<$Res> {
  factory _$$_CommentFormCopyWith(
          _$_CommentForm value, $Res Function(_$_CommentForm) then) =
      __$$_CommentFormCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, String postid});
}

/// @nodoc
class __$$_CommentFormCopyWithImpl<$Res>
    extends _$CommentFormCopyWithImpl<$Res, _$_CommentForm>
    implements _$$_CommentFormCopyWith<$Res> {
  __$$_CommentFormCopyWithImpl(
      _$_CommentForm _value, $Res Function(_$_CommentForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? postid = null,
  }) {
    return _then(_$_CommentForm(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      postid: null == postid
          ? _value.postid
          : postid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CommentForm implements _CommentForm {
  _$_CommentForm({required this.description, required this.postid});

  @override
  final String description;
//TODO: Change to image
  @override
  final String postid;

  @override
  String toString() {
    return 'CommentForm(description: $description, postid: $postid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommentForm &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.postid, postid) || other.postid == postid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description, postid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentFormCopyWith<_$_CommentForm> get copyWith =>
      __$$_CommentFormCopyWithImpl<_$_CommentForm>(this, _$identity);
}

abstract class _CommentForm implements CommentForm {
  factory _CommentForm(
      {required final String description,
      required final String postid}) = _$_CommentForm;

  @override
  String get description;
  @override //TODO: Change to image
  String get postid;
  @override
  @JsonKey(ignore: true)
  _$$_CommentFormCopyWith<_$_CommentForm> get copyWith =>
      throw _privateConstructorUsedError;
}
