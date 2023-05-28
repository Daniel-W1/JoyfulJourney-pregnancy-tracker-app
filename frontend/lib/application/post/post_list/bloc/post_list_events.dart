
class PostListEvent {
  const PostListEvent._();

  const factory PostListEvent.initial() = PostListEventInitial;

  const factory PostListEvent.load() = PostListEventLoad;

  const factory PostListEvent.refresh() = PostListEventRefresh;

}

class PostListEventInitial extends PostListEvent {
  const PostListEventInitial() : super._();
}

class PostListEventLoad extends PostListEvent {
  const PostListEventLoad() : super._();
}

class PostListEventRefresh extends PostListEvent {
  const PostListEventRefresh() : super._();
}

