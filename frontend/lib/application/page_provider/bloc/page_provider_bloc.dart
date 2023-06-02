import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:frontend/presentation/landingpage/landing_page.dart';
import 'package:frontend/presentation/others/others_page.dart';
import 'package:frontend/presentation/posts/posts_page.dart';

part 'page_provider_event.dart';
part 'page_provider_state.dart';

class PageProviderBloc extends Bloc<PageProviderEvent, PageProviderState> {
  PageProviderBloc() : super(PageProviderInitial()) {
    on<PageProviderEvent>((event, emit) {
      if (event is LoadPageEvent) {
        _getPage(currentIndex: event.index, event: event, emit: emit);
      }
    });
  }

  void _getPage(
      {required currentIndex,
      required PageProviderEvent event,
      required Emitter<PageProviderState> emit}) {
    switch (currentIndex) {
      case 0:
        emit(SelectedPage(const LandingPage(), currentIndex));
        break;

      case 1:
        emit(SelectedPage(const PostsPage(), currentIndex));
        break;
      case 2:
        emit(SelectedPage(OthersPage(), currentIndex));
        break;

      default:
        emit(SelectedPage(
            const Center(child: Text("No page found :(")), currentIndex));
    }
  }
}
