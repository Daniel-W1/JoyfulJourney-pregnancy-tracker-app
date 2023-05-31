
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_list_events.freezed.dart';

@freezed
class PostListEvent with _$PostListEvent {

  const factory PostListEvent.initial() = PostListEventInitial;

  const factory PostListEvent.load() = PostListEventLoad;
  const factory PostListEvent.refresh() = PostListEventRefresh;
  const factory PostListEvent.loadAll() = PostListEventLoadAll;
  const factory PostListEvent.refreshAll() = PostListEventRefreshAll;

}
