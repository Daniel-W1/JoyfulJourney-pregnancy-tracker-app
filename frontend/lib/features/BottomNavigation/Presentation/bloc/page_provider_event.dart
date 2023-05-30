part of 'page_provider_bloc.dart';

abstract class PageProviderEvent extends Equatable {
  const PageProviderEvent();

  @override
  List<Object> get props => [];
}

class LoadPageEvent extends PageProviderEvent {
  final int index;
  const LoadPageEvent(this.index);
  @override
  // TODO: implement props
  List<Object> get props => [index];
}
