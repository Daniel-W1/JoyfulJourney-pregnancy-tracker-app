import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:frontend/domain/tip/tip.dart';

import 'tip_event.dart';
import 'tip_state.dart';

class TipBloc extends Bloc<TipEvent, TipState> {
  final TipRepositoryInterface tipRepositoryInterface;

  TipBloc({required this.tipRepositoryInterface})
      : super(const TipStateInitial()) {

    on<TipEventGetAll>((event, emit) async {
      emit(const TipStateLoading());

      Either<TipFailure, List<TipDomain>> result =
          await tipRepositoryInterface.getTips();

      result.fold((l) => emit(TipStateFailure(l)),
          (r) => emit(TipStateSuccessMultiple(r)));
    });

    on<TipEventGetByType>((event, emit) async {
      emit(const TipStateLoading());

      Either<TipFailure, List<TipDomain>> result =
          await tipRepositoryInterface.getTipsByType(event.type);

      result.fold((l) => emit(TipStateFailure(l)),
          (r) => emit(TipStateSuccessMultiple(r)));
    });   
    on<TipEventAdd>((event, emit) async {
      emit(const TipStateLoading());

      Either<TipFailure, TipDomain> result =
          await tipRepositoryInterface.addTip(event.tipForm);

      result.fold((l) => emit(TipStateFailure(l)),
          (r) => emit(TipStateSuccess(r)));
    });

    on<TipEventUpdate>((event, emit) async {
      emit(const TipStateLoading());

      Either<TipFailure, TipDomain> result =
          await tipRepositoryInterface.updateTip(tipForm:event.tipForm, tipId:event.tipId);

      result.fold((l) => emit(TipStateFailure(l)),
          (r) => emit(TipStateSuccess(r)));
    });

      on<TipEventDelete>((event, emit) async {
      emit(const TipStateLoading());

      Either<TipFailure, Unit> result =
          await tipRepositoryInterface.deleteTip(event.tipId);

      result.fold((l) => emit(TipStateFailure(l)),
          (r) => emit(TipStateDeleted(r)));
    });
  }

}
