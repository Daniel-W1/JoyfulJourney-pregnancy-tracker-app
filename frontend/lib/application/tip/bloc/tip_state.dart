import 'package:dartz/dartz.dart';
import 'package:frontend/domain/tip/tip.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tip_state.freezed.dart';

@freezed
class TipState with _$TipState {
  const factory TipState.initial() = TipStateInitial;
  const factory TipState.loading() = TipStateLoading;
  const factory TipState.success(TipDomain comment) = TipStateSuccess;
  const factory TipState.successMultiple(List<TipDomain> comments) =
      TipStateSuccessMultiple;
  const factory TipState.deleted(Unit success) = TipStateDeleted;
  const factory TipState.failure(Tipfailure failure) = TipStateFailure;
}