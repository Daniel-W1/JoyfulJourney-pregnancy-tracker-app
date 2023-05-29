import 'package:dartz/dartz.dart';
import 'package:frontend/domain/tip/tip.dart';

class TipState {
  const TipState._();

  const factory TipState.initial() = TipStateInitial;

  const factory TipState.loading() = TipStateLoading;

  const factory TipState.success(TipDomain comment) = TipStateSuccess;

  const factory TipState.successMultiple(List<TipDomain> comments) = TipStateSuccessMultiple;

  const factory TipState.deleted(Unit success) = TipStateDeleted;

  const factory TipState.failure(TipFailure failure) = TipStateFailure;

  TipState copyWith({
    TipDomain? comment,
    List<TipDomain>? comments,
    TipFailure? failure,
    Unit? success,
  }) {
    if (comment != null) {
      return TipState.success(comment);
    } else if (comments != null) {
      return TipState.successMultiple(comments);
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
  final TipDomain comment;

  const TipStateSuccess(this.comment) : super._();
}

class TipStateSuccessMultiple extends TipState {
  final List<TipDomain> comments;

  const TipStateSuccessMultiple(this.comments) : super._();
}

class TipStateDeleted extends TipState {
  final Unit success;

  const TipStateDeleted(this.success) : super._();
}

class TipStateFailure extends TipState {
  final TipFailure failure;

  const TipStateFailure(this.failure) : super._();
}