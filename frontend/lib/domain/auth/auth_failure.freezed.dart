// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() networkError,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() invalidPassword,
    required TResult Function() unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? networkError,
    TResult? Function()? invalidEmailAndPasswordCombination,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? invalidPassword,
    TResult? Function()? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? networkError,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? invalidPassword,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidPassword value) invalidPassword,
    required TResult Function(Unexpected value) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(InvalidPassword value)? invalidPassword,
    TResult? Function(Unexpected value)? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(NetworkError value)? networkError,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidPassword value)? invalidPassword,
    TResult Function(Unexpected value)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res, AuthFailure>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res, $Val extends AuthFailure>
    implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ServerErrorCopyWith<$Res> {
  factory _$$ServerErrorCopyWith(
          _$ServerError value, $Res Function(_$ServerError) then) =
      __$$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerErrorCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$ServerError>
    implements _$$ServerErrorCopyWith<$Res> {
  __$$ServerErrorCopyWithImpl(
      _$ServerError _value, $Res Function(_$ServerError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() networkError,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() invalidPassword,
    required TResult Function() unexpected,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? networkError,
    TResult? Function()? invalidEmailAndPasswordCombination,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? invalidPassword,
    TResult? Function()? unexpected,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? networkError,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? invalidPassword,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidPassword value) invalidPassword,
    required TResult Function(Unexpected value) unexpected,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(InvalidPassword value)? invalidPassword,
    TResult? Function(Unexpected value)? unexpected,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(NetworkError value)? networkError,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidPassword value)? invalidPassword,
    TResult Function(Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class _$$NetworkErrorCopyWith<$Res> {
  factory _$$NetworkErrorCopyWith(
          _$NetworkError value, $Res Function(_$NetworkError) then) =
      __$$NetworkErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkErrorCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$NetworkError>
    implements _$$NetworkErrorCopyWith<$Res> {
  __$$NetworkErrorCopyWithImpl(
      _$NetworkError _value, $Res Function(_$NetworkError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NetworkError implements NetworkError {
  const _$NetworkError();

  @override
  String toString() {
    return 'AuthFailure.networkError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NetworkError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() networkError,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() invalidPassword,
    required TResult Function() unexpected,
  }) {
    return networkError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? networkError,
    TResult? Function()? invalidEmailAndPasswordCombination,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? invalidPassword,
    TResult? Function()? unexpected,
  }) {
    return networkError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? networkError,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? invalidPassword,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidPassword value) invalidPassword,
    required TResult Function(Unexpected value) unexpected,
  }) {
    return networkError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(InvalidPassword value)? invalidPassword,
    TResult? Function(Unexpected value)? unexpected,
  }) {
    return networkError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(NetworkError value)? networkError,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidPassword value)? invalidPassword,
    TResult Function(Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(this);
    }
    return orElse();
  }
}

abstract class NetworkError implements AuthFailure {
  const factory NetworkError() = _$NetworkError;
}

/// @nodoc
abstract class _$$InvalidEmailAndPasswordCombinationCopyWith<$Res> {
  factory _$$InvalidEmailAndPasswordCombinationCopyWith(
          _$InvalidEmailAndPasswordCombination value,
          $Res Function(_$InvalidEmailAndPasswordCombination) then) =
      __$$InvalidEmailAndPasswordCombinationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidEmailAndPasswordCombinationCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res,
        _$InvalidEmailAndPasswordCombination>
    implements _$$InvalidEmailAndPasswordCombinationCopyWith<$Res> {
  __$$InvalidEmailAndPasswordCombinationCopyWithImpl(
      _$InvalidEmailAndPasswordCombination _value,
      $Res Function(_$InvalidEmailAndPasswordCombination) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvalidEmailAndPasswordCombination
    implements InvalidEmailAndPasswordCombination {
  const _$InvalidEmailAndPasswordCombination();

  @override
  String toString() {
    return 'AuthFailure.invalidEmailAndPasswordCombination()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEmailAndPasswordCombination);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() networkError,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() invalidPassword,
    required TResult Function() unexpected,
  }) {
    return invalidEmailAndPasswordCombination();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? networkError,
    TResult? Function()? invalidEmailAndPasswordCombination,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? invalidPassword,
    TResult? Function()? unexpected,
  }) {
    return invalidEmailAndPasswordCombination?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? networkError,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? invalidPassword,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (invalidEmailAndPasswordCombination != null) {
      return invalidEmailAndPasswordCombination();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidPassword value) invalidPassword,
    required TResult Function(Unexpected value) unexpected,
  }) {
    return invalidEmailAndPasswordCombination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(InvalidPassword value)? invalidPassword,
    TResult? Function(Unexpected value)? unexpected,
  }) {
    return invalidEmailAndPasswordCombination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(NetworkError value)? networkError,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidPassword value)? invalidPassword,
    TResult Function(Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (invalidEmailAndPasswordCombination != null) {
      return invalidEmailAndPasswordCombination(this);
    }
    return orElse();
  }
}

abstract class InvalidEmailAndPasswordCombination implements AuthFailure {
  const factory InvalidEmailAndPasswordCombination() =
      _$InvalidEmailAndPasswordCombination;
}

/// @nodoc
abstract class _$$EmailAlreadyInUseCopyWith<$Res> {
  factory _$$EmailAlreadyInUseCopyWith(
          _$EmailAlreadyInUse value, $Res Function(_$EmailAlreadyInUse) then) =
      __$$EmailAlreadyInUseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmailAlreadyInUseCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$EmailAlreadyInUse>
    implements _$$EmailAlreadyInUseCopyWith<$Res> {
  __$$EmailAlreadyInUseCopyWithImpl(
      _$EmailAlreadyInUse _value, $Res Function(_$EmailAlreadyInUse) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmailAlreadyInUse implements EmailAlreadyInUse {
  const _$EmailAlreadyInUse();

  @override
  String toString() {
    return 'AuthFailure.emailAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmailAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() networkError,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() invalidPassword,
    required TResult Function() unexpected,
  }) {
    return emailAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? networkError,
    TResult? Function()? invalidEmailAndPasswordCombination,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? invalidPassword,
    TResult? Function()? unexpected,
  }) {
    return emailAlreadyInUse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? networkError,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? invalidPassword,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidPassword value) invalidPassword,
    required TResult Function(Unexpected value) unexpected,
  }) {
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(InvalidPassword value)? invalidPassword,
    TResult? Function(Unexpected value)? unexpected,
  }) {
    return emailAlreadyInUse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(NetworkError value)? networkError,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidPassword value)? invalidPassword,
    TResult Function(Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class EmailAlreadyInUse implements AuthFailure {
  const factory EmailAlreadyInUse() = _$EmailAlreadyInUse;
}

/// @nodoc
abstract class _$$InvalidEmailCopyWith<$Res> {
  factory _$$InvalidEmailCopyWith(
          _$InvalidEmail value, $Res Function(_$InvalidEmail) then) =
      __$$InvalidEmailCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidEmailCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$InvalidEmail>
    implements _$$InvalidEmailCopyWith<$Res> {
  __$$InvalidEmailCopyWithImpl(
      _$InvalidEmail _value, $Res Function(_$InvalidEmail) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvalidEmail implements InvalidEmail {
  const _$InvalidEmail();

  @override
  String toString() {
    return 'AuthFailure.invalidEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InvalidEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() networkError,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() invalidPassword,
    required TResult Function() unexpected,
  }) {
    return invalidEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? networkError,
    TResult? Function()? invalidEmailAndPasswordCombination,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? invalidPassword,
    TResult? Function()? unexpected,
  }) {
    return invalidEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? networkError,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? invalidPassword,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidPassword value) invalidPassword,
    required TResult Function(Unexpected value) unexpected,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(InvalidPassword value)? invalidPassword,
    TResult? Function(Unexpected value)? unexpected,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(NetworkError value)? networkError,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidPassword value)? invalidPassword,
    TResult Function(Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail implements AuthFailure {
  const factory InvalidEmail() = _$InvalidEmail;
}

/// @nodoc
abstract class _$$InvalidPasswordCopyWith<$Res> {
  factory _$$InvalidPasswordCopyWith(
          _$InvalidPassword value, $Res Function(_$InvalidPassword) then) =
      __$$InvalidPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidPasswordCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$InvalidPassword>
    implements _$$InvalidPasswordCopyWith<$Res> {
  __$$InvalidPasswordCopyWithImpl(
      _$InvalidPassword _value, $Res Function(_$InvalidPassword) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvalidPassword implements InvalidPassword {
  const _$InvalidPassword();

  @override
  String toString() {
    return 'AuthFailure.invalidPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InvalidPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() networkError,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() invalidPassword,
    required TResult Function() unexpected,
  }) {
    return invalidPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? networkError,
    TResult? Function()? invalidEmailAndPasswordCombination,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? invalidPassword,
    TResult? Function()? unexpected,
  }) {
    return invalidPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? networkError,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? invalidPassword,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidPassword value) invalidPassword,
    required TResult Function(Unexpected value) unexpected,
  }) {
    return invalidPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(InvalidPassword value)? invalidPassword,
    TResult? Function(Unexpected value)? unexpected,
  }) {
    return invalidPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(NetworkError value)? networkError,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidPassword value)? invalidPassword,
    TResult Function(Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword(this);
    }
    return orElse();
  }
}

abstract class InvalidPassword implements AuthFailure {
  const factory InvalidPassword() = _$InvalidPassword;
}

/// @nodoc
abstract class _$$UnexpectedCopyWith<$Res> {
  factory _$$UnexpectedCopyWith(
          _$Unexpected value, $Res Function(_$Unexpected) then) =
      __$$UnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnexpectedCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$Unexpected>
    implements _$$UnexpectedCopyWith<$Res> {
  __$$UnexpectedCopyWithImpl(
      _$Unexpected _value, $Res Function(_$Unexpected) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Unexpected implements Unexpected {
  const _$Unexpected();

  @override
  String toString() {
    return 'AuthFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() networkError,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() invalidPassword,
    required TResult Function() unexpected,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? networkError,
    TResult? Function()? invalidEmailAndPasswordCombination,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? invalidPassword,
    TResult? Function()? unexpected,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? networkError,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? invalidPassword,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidPassword value) invalidPassword,
    required TResult Function(Unexpected value) unexpected,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(InvalidPassword value)? invalidPassword,
    TResult? Function(Unexpected value)? unexpected,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(NetworkError value)? networkError,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidPassword value)? invalidPassword,
    TResult Function(Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class Unexpected implements AuthFailure {
  const factory Unexpected() = _$Unexpected;
}
