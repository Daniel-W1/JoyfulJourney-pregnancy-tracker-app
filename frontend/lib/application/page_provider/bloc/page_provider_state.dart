part of 'page_provider_bloc.dart';

abstract class PageProviderState extends Equatable {
  const PageProviderState();

  @override
  List<Object> get props => [];
}

class PageProviderInitial extends PageProviderState {}

class SelectedPage extends PageProviderState {
  final int currentIndex;
  final Widget page;
  const SelectedPage(this.page, this.currentIndex);
  @override
  List<Object> get props => [page];
}
