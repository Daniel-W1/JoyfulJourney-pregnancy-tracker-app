import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'post_get_event.dart';
part 'post_get_state.dart';

class PostGetBloc extends Bloc<PostGetEvent, PostGetState> {
  PostGetBloc() : super(PostGetInitial()) {
    on<PostGetEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
