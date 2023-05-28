abstract class PostLikeEvent {
  const PostLikeEvent();

  factory PostLikeEvent.fromJson(Map<String, dynamic> json) {
    final type = json['type'] as String?;
    if (type == null) {
      throw ArgumentError('Invalid PostLikeEvent JSON: $json');
    }
    switch (type) {
      case 'initial':
        return const PostLikeEventInitial();
      case 'changeLike':
        final liker = json['liker'] as String?;
        final postId = json['postId'] as String?;
        if (liker == null || postId == null) {
          throw ArgumentError('Invalid PostLikeEvent JSON: $json');
        }
        return PostLikeEventChangeLike(liker, postId);
      default:
        throw ArgumentError('Invalid PostLikeEvent type: $type');
    }
  }

  Map<String, dynamic> toJson() {
    if (this is PostLikeEventInitial) {
      return {'type': 'initial'};
    } else if (this is PostLikeEventChangeLike) {
      return {
        'type': 'changeLike',
        'liker': (this as PostLikeEventChangeLike).liker,
        'postId': (this as PostLikeEventChangeLike).postId
      };
    } else {
      throw StateError('Invalid PostLikeEvent type: $runtimeType');
    }
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) || runtimeType == other.runtimeType;

  @override
  int get hashCode => runtimeType.hashCode;
}

class PostLikeEventInitial extends PostLikeEvent {
  const PostLikeEventInitial();

  @override
  bool operator ==(Object other) => identical(this, other);

  @override
  int get hashCode => runtimeType.hashCode;
}

class PostLikeEventChangeLike extends PostLikeEvent {
  final String liker;
  final String postId;

  const PostLikeEventChangeLike(this.liker, this.postId);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PostLikeEventChangeLike &&
          runtimeType == other.runtimeType &&
          liker == other.liker &&
          postId == other.postId;

  @override
  int get hashCode => runtimeType.hashCode ^ liker.hashCode ^ postId.hashCode;
}