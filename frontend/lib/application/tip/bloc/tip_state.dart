import 'package:dartz/dartz.dart';
import 'package:frontend/domain/tip/tip.dart';

class TipState {
  const TipState._();

  const factory TipState.initial() = TipStateInitial;

  const factory TipState.loading() = TipStateLoading;

  const factory TipState.success(TipDomain tip) = TipStateSuccess;

  const factory TipState.successMultiple(List<TipDomain> tips) = TipStateSuccessMultiple;

  const factory TipState.deleted(Unit success) = TipStateDeleted;

  const factory TipState.failure(TipFailure failure) = TipStateFailure;

  TipState copyWith({
    TipDomain? tip,
    List<TipDomain>? tips,
    TipFailure? failure,
    Unit? success,
  }) {
    if (tip != null) {
      return TipState.success(tip);
    } else if (tips != null) {
      return TipState.successMultiple(tips);
    } else if (failure != null) {
      return TipState.failure(failure);
    } else if (success != null) {
      return TipState.deleted(success);
    } else {
      return this;
    }
  }
}


class TipStateInitial extends TipState {
  const TipStateInitial() : super._();
}

class TipStateLoading extends TipState {
  const TipStateLoading() : super._();
}

class TipStateSuccess extends TipState {
  final TipDomain tip;

  const TipStateSuccess(this.tip) : super._();
}

class TipStateSuccessMultiple extends TipState {
  final List<TipDomain> tips;

  const TipStateSuccessMultiple(this.tips) : super._();
}

class TipStateDeleted extends TipState {
  final Unit success;

  const TipStateDeleted(this.success) : super._();
}

class TipStateFailure extends TipState {
  final TipFailure failure;

  const TipStateFailure(this.failure) : super._();
}
