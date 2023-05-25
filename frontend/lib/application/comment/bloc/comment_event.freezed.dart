// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CommentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String postId) getCommentsForPost,
    required TResult Function() getComments,
    required TResult Function(String userid) getUserComments,
    required TResult Function(CommentForm commentForm) addComment,
    required TResult Function(CommentForm commentForm, String commentId)
        updateComment,
    required TResult Function(String commentId) deleteComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String postId)? getCommentsForPost,
    TResult? Function()? getComments,
    TResult? Function(String userid)? getUserComments,
    TResult? Function(CommentForm commentForm)? addComment,
    TResult? Function(CommentForm commentForm, String commentId)? updateComment,
    TResult? Function(String commentId)? deleteComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String postId)? getCommentsForPost,
    TResult Function()? getComments,
    TResult Function(String userid)? getUserComments,
    TResult Function(CommentForm commentForm)? addComment,
    TResult Function(CommentForm commentForm, String commentId)? updateComment,
    TResult Function(String commentId)? deleteComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommentEventGetCommentsForPost value)
        getCommentsForPost,
    required TResult Function(CommentEventGetComments value) getComments,
    required TResult Function(CommentEventGetUserComments value)
        getUserComments,
    required TResult Function(CommentEventAddComment value) addComment,
    required TResult Function(CommentEventUpdateComment value) updateComment,
    required TResult Function(CommentEventDeleteComment value) deleteComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CommentEventGetCommentsForPost value)? getCommentsForPost,
    TResult? Function(CommentEventGetComments value)? getComments,
    TResult? Function(CommentEventGetUserComments value)? getUserComments,
    TResult? Function(CommentEventAddComment value)? addComment,
    TResult? Function(CommentEventUpdateComment value)? updateComment,
    TResult? Function(CommentEventDeleteComment value)? deleteComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommentEventGetCommentsForPost value)? getCommentsForPost,
    TResult Function(CommentEventGetComments value)? getComments,
    TResult Function(CommentEventGetUserComments value)? getUserComments,
    TResult Function(CommentEventAddComment value)? addComment,
    TResult Function(CommentEventUpdateComment value)? updateComment,
    TResult Function(CommentEventDeleteComment value)? deleteComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentEventCopyWith<$Res> {
  factory $CommentEventCopyWith(
          CommentEvent value, $Res Function(CommentEvent) then) =
      _$CommentEventCopyWithImpl<$Res, CommentEvent>;
}

/// @nodoc
class _$CommentEventCopyWithImpl<$Res, $Val extends CommentEvent>
    implements $CommentEventCopyWith<$Res> {
  _$CommentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CommentEventGetCommentsForPostCopyWith<$Res> {
  factory _$$CommentEventGetCommentsForPostCopyWith(
          _$CommentEventGetCommentsForPost value,
          $Res Function(_$CommentEventGetCommentsForPost) then) =
      __$$CommentEventGetCommentsForPostCopyWithImpl<$Res>;
  @useResult
  $Res call({String postId});
}

/// @nodoc
class __$$CommentEventGetCommentsForPostCopyWithImpl<$Res>
    extends _$CommentEventCopyWithImpl<$Res, _$CommentEventGetCommentsForPost>
    implements _$$CommentEventGetCommentsForPostCopyWith<$Res> {
  __$$CommentEventGetCommentsForPostCopyWithImpl(
      _$CommentEventGetCommentsForPost _value,
      $Res Function(_$CommentEventGetCommentsForPost) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
  }) {
    return _then(_$CommentEventGetCommentsForPost(
      null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CommentEventGetCommentsForPost
    implements CommentEventGetCommentsForPost {
  const _$CommentEventGetCommentsForPost(this.postId);

  @override
  final String postId;

  @override
  String toString() {
    return 'CommentEvent.getCommentsForPost(postId: $postId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentEventGetCommentsForPost &&
            (identical(other.postId, postId) || other.postId == postId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentEventGetCommentsForPostCopyWith<_$CommentEventGetCommentsForPost>
      get copyWith => __$$CommentEventGetCommentsForPostCopyWithImpl<
          _$CommentEventGetCommentsForPost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String postId) getCommentsForPost,
    required TResult Function() getComments,
    required TResult Function(String userid) getUserComments,
    required TResult Function(CommentForm commentForm) addComment,
    required TResult Function(CommentForm commentForm, String commentId)
        updateComment,
    required TResult Function(String commentId) deleteComment,
  }) {
    return getCommentsForPost(postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String postId)? getCommentsForPost,
    TResult? Function()? getComments,
    TResult? Function(String userid)? getUserComments,
    TResult? Function(CommentForm commentForm)? addComment,
    TResult? Function(CommentForm commentForm, String commentId)? updateComment,
    TResult? Function(String commentId)? deleteComment,
  }) {
    return getCommentsForPost?.call(postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String postId)? getCommentsForPost,
    TResult Function()? getComments,
    TResult Function(String userid)? getUserComments,
    TResult Function(CommentForm commentForm)? addComment,
    TResult Function(CommentForm commentForm, String commentId)? updateComment,
    TResult Function(String commentId)? deleteComment,
    required TResult orElse(),
  }) {
    if (getCommentsForPost != null) {
      return getCommentsForPost(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommentEventGetCommentsForPost value)
        getCommentsForPost,
    required TResult Function(CommentEventGetComments value) getComments,
    required TResult Function(CommentEventGetUserComments value)
        getUserComments,
    required TResult Function(CommentEventAddComment value) addComment,
    required TResult Function(CommentEventUpdateComment value) updateComment,
    required TResult Function(CommentEventDeleteComment value) deleteComment,
  }) {
    return getCommentsForPost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CommentEventGetCommentsForPost value)? getCommentsForPost,
    TResult? Function(CommentEventGetComments value)? getComments,
    TResult? Function(CommentEventGetUserComments value)? getUserComments,
    TResult? Function(CommentEventAddComment value)? addComment,
    TResult? Function(CommentEventUpdateComment value)? updateComment,
    TResult? Function(CommentEventDeleteComment value)? deleteComment,
  }) {
    return getCommentsForPost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommentEventGetCommentsForPost value)? getCommentsForPost,
    TResult Function(CommentEventGetComments value)? getComments,
    TResult Function(CommentEventGetUserComments value)? getUserComments,
    TResult Function(CommentEventAddComment value)? addComment,
    TResult Function(CommentEventUpdateComment value)? updateComment,
    TResult Function(CommentEventDeleteComment value)? deleteComment,
    required TResult orElse(),
  }) {
    if (getCommentsForPost != null) {
      return getCommentsForPost(this);
    }
    return orElse();
  }
}

abstract class CommentEventGetCommentsForPost implements CommentEvent {
  const factory CommentEventGetCommentsForPost(final String postId) =
      _$CommentEventGetCommentsForPost;

  String get postId;
  @JsonKey(ignore: true)
  _$$CommentEventGetCommentsForPostCopyWith<_$CommentEventGetCommentsForPost>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CommentEventGetCommentsCopyWith<$Res> {
  factory _$$CommentEventGetCommentsCopyWith(_$CommentEventGetComments value,
          $Res Function(_$CommentEventGetComments) then) =
      __$$CommentEventGetCommentsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CommentEventGetCommentsCopyWithImpl<$Res>
    extends _$CommentEventCopyWithImpl<$Res, _$CommentEventGetComments>
    implements _$$CommentEventGetCommentsCopyWith<$Res> {
  __$$CommentEventGetCommentsCopyWithImpl(_$CommentEventGetComments _value,
      $Res Function(_$CommentEventGetComments) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CommentEventGetComments implements CommentEventGetComments {
  const _$CommentEventGetComments();

  @override
  String toString() {
    return 'CommentEvent.getComments()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentEventGetComments);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String postId) getCommentsForPost,
    required TResult Function() getComments,
    required TResult Function(String userid) getUserComments,
    required TResult Function(CommentForm commentForm) addComment,
    required TResult Function(CommentForm commentForm, String commentId)
        updateComment,
    required TResult Function(String commentId) deleteComment,
  }) {
    return getComments();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String postId)? getCommentsForPost,
    TResult? Function()? getComments,
    TResult? Function(String userid)? getUserComments,
    TResult? Function(CommentForm commentForm)? addComment,
    TResult? Function(CommentForm commentForm, String commentId)? updateComment,
    TResult? Function(String commentId)? deleteComment,
  }) {
    return getComments?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String postId)? getCommentsForPost,
    TResult Function()? getComments,
    TResult Function(String userid)? getUserComments,
    TResult Function(CommentForm commentForm)? addComment,
    TResult Function(CommentForm commentForm, String commentId)? updateComment,
    TResult Function(String commentId)? deleteComment,
    required TResult orElse(),
  }) {
    if (getComments != null) {
      return getComments();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommentEventGetCommentsForPost value)
        getCommentsForPost,
    required TResult Function(CommentEventGetComments value) getComments,
    required TResult Function(CommentEventGetUserComments value)
        getUserComments,
    required TResult Function(CommentEventAddComment value) addComment,
    required TResult Function(CommentEventUpdateComment value) updateComment,
    required TResult Function(CommentEventDeleteComment value) deleteComment,
  }) {
    return getComments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CommentEventGetCommentsForPost value)? getCommentsForPost,
    TResult? Function(CommentEventGetComments value)? getComments,
    TResult? Function(CommentEventGetUserComments value)? getUserComments,
    TResult? Function(CommentEventAddComment value)? addComment,
    TResult? Function(CommentEventUpdateComment value)? updateComment,
    TResult? Function(CommentEventDeleteComment value)? deleteComment,
  }) {
    return getComments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommentEventGetCommentsForPost value)? getCommentsForPost,
    TResult Function(CommentEventGetComments value)? getComments,
    TResult Function(CommentEventGetUserComments value)? getUserComments,
    TResult Function(CommentEventAddComment value)? addComment,
    TResult Function(CommentEventUpdateComment value)? updateComment,
    TResult Function(CommentEventDeleteComment value)? deleteComment,
    required TResult orElse(),
  }) {
    if (getComments != null) {
      return getComments(this);
    }
    return orElse();
  }
}

abstract class CommentEventGetComments implements CommentEvent {
  const factory CommentEventGetComments() = _$CommentEventGetComments;
}

/// @nodoc
abstract class _$$CommentEventGetUserCommentsCopyWith<$Res> {
  factory _$$CommentEventGetUserCommentsCopyWith(
          _$CommentEventGetUserComments value,
          $Res Function(_$CommentEventGetUserComments) then) =
      __$$CommentEventGetUserCommentsCopyWithImpl<$Res>;
  @useResult
  $Res call({String userid});
}

/// @nodoc
class __$$CommentEventGetUserCommentsCopyWithImpl<$Res>
    extends _$CommentEventCopyWithImpl<$Res, _$CommentEventGetUserComments>
    implements _$$CommentEventGetUserCommentsCopyWith<$Res> {
  __$$CommentEventGetUserCommentsCopyWithImpl(
      _$CommentEventGetUserComments _value,
      $Res Function(_$CommentEventGetUserComments) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userid = null,
  }) {
    return _then(_$CommentEventGetUserComments(
      null == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CommentEventGetUserComments implements CommentEventGetUserComments {
  const _$CommentEventGetUserComments(this.userid);

  @override
  final String userid;

  @override
  String toString() {
    return 'CommentEvent.getUserComments(userid: $userid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentEventGetUserComments &&
            (identical(other.userid, userid) || other.userid == userid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentEventGetUserCommentsCopyWith<_$CommentEventGetUserComments>
      get copyWith => __$$CommentEventGetUserCommentsCopyWithImpl<
          _$CommentEventGetUserComments>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String postId) getCommentsForPost,
    required TResult Function() getComments,
    required TResult Function(String userid) getUserComments,
    required TResult Function(CommentForm commentForm) addComment,
    required TResult Function(CommentForm commentForm, String commentId)
        updateComment,
    required TResult Function(String commentId) deleteComment,
  }) {
    return getUserComments(userid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String postId)? getCommentsForPost,
    TResult? Function()? getComments,
    TResult? Function(String userid)? getUserComments,
    TResult? Function(CommentForm commentForm)? addComment,
    TResult? Function(CommentForm commentForm, String commentId)? updateComment,
    TResult? Function(String commentId)? deleteComment,
  }) {
    return getUserComments?.call(userid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String postId)? getCommentsForPost,
    TResult Function()? getComments,
    TResult Function(String userid)? getUserComments,
    TResult Function(CommentForm commentForm)? addComment,
    TResult Function(CommentForm commentForm, String commentId)? updateComment,
    TResult Function(String commentId)? deleteComment,
    required TResult orElse(),
  }) {
    if (getUserComments != null) {
      return getUserComments(userid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommentEventGetCommentsForPost value)
        getCommentsForPost,
    required TResult Function(CommentEventGetComments value) getComments,
    required TResult Function(CommentEventGetUserComments value)
        getUserComments,
    required TResult Function(CommentEventAddComment value) addComment,
    required TResult Function(CommentEventUpdateComment value) updateComment,
    required TResult Function(CommentEventDeleteComment value) deleteComment,
  }) {
    return getUserComments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CommentEventGetCommentsForPost value)? getCommentsForPost,
    TResult? Function(CommentEventGetComments value)? getComments,
    TResult? Function(CommentEventGetUserComments value)? getUserComments,
    TResult? Function(CommentEventAddComment value)? addComment,
    TResult? Function(CommentEventUpdateComment value)? updateComment,
    TResult? Function(CommentEventDeleteComment value)? deleteComment,
  }) {
    return getUserComments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommentEventGetCommentsForPost value)? getCommentsForPost,
    TResult Function(CommentEventGetComments value)? getComments,
    TResult Function(CommentEventGetUserComments value)? getUserComments,
    TResult Function(CommentEventAddComment value)? addComment,
    TResult Function(CommentEventUpdateComment value)? updateComment,
    TResult Function(CommentEventDeleteComment value)? deleteComment,
    required TResult orElse(),
  }) {
    if (getUserComments != null) {
      return getUserComments(this);
    }
    return orElse();
  }
}

abstract class CommentEventGetUserComments implements CommentEvent {
  const factory CommentEventGetUserComments(final String userid) =
      _$CommentEventGetUserComments;

  String get userid;
  @JsonKey(ignore: true)
  _$$CommentEventGetUserCommentsCopyWith<_$CommentEventGetUserComments>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CommentEventAddCommentCopyWith<$Res> {
  factory _$$CommentEventAddCommentCopyWith(_$CommentEventAddComment value,
          $Res Function(_$CommentEventAddComment) then) =
      __$$CommentEventAddCommentCopyWithImpl<$Res>;
  @useResult
  $Res call({CommentForm commentForm});

  $CommentFormCopyWith<$Res> get commentForm;
}

/// @nodoc
class __$$CommentEventAddCommentCopyWithImpl<$Res>
    extends _$CommentEventCopyWithImpl<$Res, _$CommentEventAddComment>
    implements _$$CommentEventAddCommentCopyWith<$Res> {
  __$$CommentEventAddCommentCopyWithImpl(_$CommentEventAddComment _value,
      $Res Function(_$CommentEventAddComment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentForm = null,
  }) {
    return _then(_$CommentEventAddComment(
      null == commentForm
          ? _value.commentForm
          : commentForm // ignore: cast_nullable_to_non_nullable
              as CommentForm,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CommentFormCopyWith<$Res> get commentForm {
    return $CommentFormCopyWith<$Res>(_value.commentForm, (value) {
      return _then(_value.copyWith(commentForm: value));
    });
  }
}

/// @nodoc

class _$CommentEventAddComment implements CommentEventAddComment {
  const _$CommentEventAddComment(this.commentForm);

  @override
  final CommentForm commentForm;

  @override
  String toString() {
    return 'CommentEvent.addComment(commentForm: $commentForm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentEventAddComment &&
            (identical(other.commentForm, commentForm) ||
                other.commentForm == commentForm));
  }

  @override
  int get hashCode => Object.hash(runtimeType, commentForm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentEventAddCommentCopyWith<_$CommentEventAddComment> get copyWith =>
      __$$CommentEventAddCommentCopyWithImpl<_$CommentEventAddComment>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String postId) getCommentsForPost,
    required TResult Function() getComments,
    required TResult Function(String userid) getUserComments,
    required TResult Function(CommentForm commentForm) addComment,
    required TResult Function(CommentForm commentForm, String commentId)
        updateComment,
    required TResult Function(String commentId) deleteComment,
  }) {
    return addComment(commentForm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String postId)? getCommentsForPost,
    TResult? Function()? getComments,
    TResult? Function(String userid)? getUserComments,
    TResult? Function(CommentForm commentForm)? addComment,
    TResult? Function(CommentForm commentForm, String commentId)? updateComment,
    TResult? Function(String commentId)? deleteComment,
  }) {
    return addComment?.call(commentForm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String postId)? getCommentsForPost,
    TResult Function()? getComments,
    TResult Function(String userid)? getUserComments,
    TResult Function(CommentForm commentForm)? addComment,
    TResult Function(CommentForm commentForm, String commentId)? updateComment,
    TResult Function(String commentId)? deleteComment,
    required TResult orElse(),
  }) {
    if (addComment != null) {
      return addComment(commentForm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommentEventGetCommentsForPost value)
        getCommentsForPost,
    required TResult Function(CommentEventGetComments value) getComments,
    required TResult Function(CommentEventGetUserComments value)
        getUserComments,
    required TResult Function(CommentEventAddComment value) addComment,
    required TResult Function(CommentEventUpdateComment value) updateComment,
    required TResult Function(CommentEventDeleteComment value) deleteComment,
  }) {
    return addComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CommentEventGetCommentsForPost value)? getCommentsForPost,
    TResult? Function(CommentEventGetComments value)? getComments,
    TResult? Function(CommentEventGetUserComments value)? getUserComments,
    TResult? Function(CommentEventAddComment value)? addComment,
    TResult? Function(CommentEventUpdateComment value)? updateComment,
    TResult? Function(CommentEventDeleteComment value)? deleteComment,
  }) {
    return addComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommentEventGetCommentsForPost value)? getCommentsForPost,
    TResult Function(CommentEventGetComments value)? getComments,
    TResult Function(CommentEventGetUserComments value)? getUserComments,
    TResult Function(CommentEventAddComment value)? addComment,
    TResult Function(CommentEventUpdateComment value)? updateComment,
    TResult Function(CommentEventDeleteComment value)? deleteComment,
    required TResult orElse(),
  }) {
    if (addComment != null) {
      return addComment(this);
    }
    return orElse();
  }
}

abstract class CommentEventAddComment implements CommentEvent {
  const factory CommentEventAddComment(final CommentForm commentForm) =
      _$CommentEventAddComment;

  CommentForm get commentForm;
  @JsonKey(ignore: true)
  _$$CommentEventAddCommentCopyWith<_$CommentEventAddComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CommentEventUpdateCommentCopyWith<$Res> {
  factory _$$CommentEventUpdateCommentCopyWith(
          _$CommentEventUpdateComment value,
          $Res Function(_$CommentEventUpdateComment) then) =
      __$$CommentEventUpdateCommentCopyWithImpl<$Res>;
  @useResult
  $Res call({CommentForm commentForm, String commentId});

  $CommentFormCopyWith<$Res> get commentForm;
}

/// @nodoc
class __$$CommentEventUpdateCommentCopyWithImpl<$Res>
    extends _$CommentEventCopyWithImpl<$Res, _$CommentEventUpdateComment>
    implements _$$CommentEventUpdateCommentCopyWith<$Res> {
  __$$CommentEventUpdateCommentCopyWithImpl(_$CommentEventUpdateComment _value,
      $Res Function(_$CommentEventUpdateComment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentForm = null,
    Object? commentId = null,
  }) {
    return _then(_$CommentEventUpdateComment(
      null == commentForm
          ? _value.commentForm
          : commentForm // ignore: cast_nullable_to_non_nullable
              as CommentForm,
      null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CommentFormCopyWith<$Res> get commentForm {
    return $CommentFormCopyWith<$Res>(_value.commentForm, (value) {
      return _then(_value.copyWith(commentForm: value));
    });
  }
}

/// @nodoc

class _$CommentEventUpdateComment implements CommentEventUpdateComment {
  const _$CommentEventUpdateComment(this.commentForm, this.commentId);

  @override
  final CommentForm commentForm;
  @override
  final String commentId;

  @override
  String toString() {
    return 'CommentEvent.updateComment(commentForm: $commentForm, commentId: $commentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentEventUpdateComment &&
            (identical(other.commentForm, commentForm) ||
                other.commentForm == commentForm) &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, commentForm, commentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentEventUpdateCommentCopyWith<_$CommentEventUpdateComment>
      get copyWith => __$$CommentEventUpdateCommentCopyWithImpl<
          _$CommentEventUpdateComment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String postId) getCommentsForPost,
    required TResult Function() getComments,
    required TResult Function(String userid) getUserComments,
    required TResult Function(CommentForm commentForm) addComment,
    required TResult Function(CommentForm commentForm, String commentId)
        updateComment,
    required TResult Function(String commentId) deleteComment,
  }) {
    return updateComment(commentForm, commentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String postId)? getCommentsForPost,
    TResult? Function()? getComments,
    TResult? Function(String userid)? getUserComments,
    TResult? Function(CommentForm commentForm)? addComment,
    TResult? Function(CommentForm commentForm, String commentId)? updateComment,
    TResult? Function(String commentId)? deleteComment,
  }) {
    return updateComment?.call(commentForm, commentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String postId)? getCommentsForPost,
    TResult Function()? getComments,
    TResult Function(String userid)? getUserComments,
    TResult Function(CommentForm commentForm)? addComment,
    TResult Function(CommentForm commentForm, String commentId)? updateComment,
    TResult Function(String commentId)? deleteComment,
    required TResult orElse(),
  }) {
    if (updateComment != null) {
      return updateComment(commentForm, commentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommentEventGetCommentsForPost value)
        getCommentsForPost,
    required TResult Function(CommentEventGetComments value) getComments,
    required TResult Function(CommentEventGetUserComments value)
        getUserComments,
    required TResult Function(CommentEventAddComment value) addComment,
    required TResult Function(CommentEventUpdateComment value) updateComment,
    required TResult Function(CommentEventDeleteComment value) deleteComment,
  }) {
    return updateComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CommentEventGetCommentsForPost value)? getCommentsForPost,
    TResult? Function(CommentEventGetComments value)? getComments,
    TResult? Function(CommentEventGetUserComments value)? getUserComments,
    TResult? Function(CommentEventAddComment value)? addComment,
    TResult? Function(CommentEventUpdateComment value)? updateComment,
    TResult? Function(CommentEventDeleteComment value)? deleteComment,
  }) {
    return updateComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommentEventGetCommentsForPost value)? getCommentsForPost,
    TResult Function(CommentEventGetComments value)? getComments,
    TResult Function(CommentEventGetUserComments value)? getUserComments,
    TResult Function(CommentEventAddComment value)? addComment,
    TResult Function(CommentEventUpdateComment value)? updateComment,
    TResult Function(CommentEventDeleteComment value)? deleteComment,
    required TResult orElse(),
  }) {
    if (updateComment != null) {
      return updateComment(this);
    }
    return orElse();
  }
}

abstract class CommentEventUpdateComment implements CommentEvent {
  const factory CommentEventUpdateComment(
          final CommentForm commentForm, final String commentId) =
      _$CommentEventUpdateComment;

  CommentForm get commentForm;
  String get commentId;
  @JsonKey(ignore: true)
  _$$CommentEventUpdateCommentCopyWith<_$CommentEventUpdateComment>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CommentEventDeleteCommentCopyWith<$Res> {
  factory _$$CommentEventDeleteCommentCopyWith(
          _$CommentEventDeleteComment value,
          $Res Function(_$CommentEventDeleteComment) then) =
      __$$CommentEventDeleteCommentCopyWithImpl<$Res>;
  @useResult
  $Res call({String commentId});
}

/// @nodoc
class __$$CommentEventDeleteCommentCopyWithImpl<$Res>
    extends _$CommentEventCopyWithImpl<$Res, _$CommentEventDeleteComment>
    implements _$$CommentEventDeleteCommentCopyWith<$Res> {
  __$$CommentEventDeleteCommentCopyWithImpl(_$CommentEventDeleteComment _value,
      $Res Function(_$CommentEventDeleteComment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentId = null,
  }) {
    return _then(_$CommentEventDeleteComment(
      null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CommentEventDeleteComment implements CommentEventDeleteComment {
  const _$CommentEventDeleteComment(this.commentId);

  @override
  final String commentId;

  @override
  String toString() {
    return 'CommentEvent.deleteComment(commentId: $commentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentEventDeleteComment &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, commentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentEventDeleteCommentCopyWith<_$CommentEventDeleteComment>
      get copyWith => __$$CommentEventDeleteCommentCopyWithImpl<
          _$CommentEventDeleteComment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String postId) getCommentsForPost,
    required TResult Function() getComments,
    required TResult Function(String userid) getUserComments,
    required TResult Function(CommentForm commentForm) addComment,
    required TResult Function(CommentForm commentForm, String commentId)
        updateComment,
    required TResult Function(String commentId) deleteComment,
  }) {
    return deleteComment(commentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String postId)? getCommentsForPost,
    TResult? Function()? getComments,
    TResult? Function(String userid)? getUserComments,
    TResult? Function(CommentForm commentForm)? addComment,
    TResult? Function(CommentForm commentForm, String commentId)? updateComment,
    TResult? Function(String commentId)? deleteComment,
  }) {
    return deleteComment?.call(commentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String postId)? getCommentsForPost,
    TResult Function()? getComments,
    TResult Function(String userid)? getUserComments,
    TResult Function(CommentForm commentForm)? addComment,
    TResult Function(CommentForm commentForm, String commentId)? updateComment,
    TResult Function(String commentId)? deleteComment,
    required TResult orElse(),
  }) {
    if (deleteComment != null) {
      return deleteComment(commentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommentEventGetCommentsForPost value)
        getCommentsForPost,
    required TResult Function(CommentEventGetComments value) getComments,
    required TResult Function(CommentEventGetUserComments value)
        getUserComments,
    required TResult Function(CommentEventAddComment value) addComment,
    required TResult Function(CommentEventUpdateComment value) updateComment,
    required TResult Function(CommentEventDeleteComment value) deleteComment,
  }) {
    return deleteComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CommentEventGetCommentsForPost value)? getCommentsForPost,
    TResult? Function(CommentEventGetComments value)? getComments,
    TResult? Function(CommentEventGetUserComments value)? getUserComments,
    TResult? Function(CommentEventAddComment value)? addComment,
    TResult? Function(CommentEventUpdateComment value)? updateComment,
    TResult? Function(CommentEventDeleteComment value)? deleteComment,
  }) {
    return deleteComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommentEventGetCommentsForPost value)? getCommentsForPost,
    TResult Function(CommentEventGetComments value)? getComments,
    TResult Function(CommentEventGetUserComments value)? getUserComments,
    TResult Function(CommentEventAddComment value)? addComment,
    TResult Function(CommentEventUpdateComment value)? updateComment,
    TResult Function(CommentEventDeleteComment value)? deleteComment,
    required TResult orElse(),
  }) {
    if (deleteComment != null) {
      return deleteComment(this);
    }
    return orElse();
  }
}

abstract class CommentEventDeleteComment implements CommentEvent {
  const factory CommentEventDeleteComment(final String commentId) =
      _$CommentEventDeleteComment;

  String get commentId;
  @JsonKey(ignore: true)
  _$$CommentEventDeleteCommentCopyWith<_$CommentEventDeleteComment>
      get copyWith => throw _privateConstructorUsedError;
}
