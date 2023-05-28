import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:frontend/domain/note/note.dart';

import 'note_event.dart';
import 'note_state.dart';

class NoteBloc extends Bloc<NoteEvent, NoteState> {
  final NoteRepositoryInterface noteRepositoryInterface;

  NoteBloc({required this.noteRepositoryInterface})
      : super(const NoteStateInitial()) {

    on<NoteEventAdd>((event, emit) async {
      emit(const NoteStateLoading());

      Either<Notefailure, NoteDomain> result =
          await noteRepositoryInterface.addNote(event.noteForm.copyWith());

          result.fold(
            (l) => emit(NoteStateFailure(l)),
            (r) => emit(NoteStateSuccess(r))
          );
    });

    on<NoteEventUpdate>((event, emit) async {
      emit(const NoteStateLoading());

      Either<Notefailure, NoteDomain> result =
          await noteRepositoryInterface.updateNote(event.noteForm.copyWith(), event.noteId);

          result.fold(
            (l) => emit(NoteStateFailure(l)),
            (r) => emit(NoteStateSuccess(r))
          );
    });

    on<NoteEventDelete>((event, emit) async {
      emit(const NoteStateLoading());

      Either<Notefailure, Unit> result =
          await noteRepositoryInterface.deleteNote(event.noteId);

          result.fold(
            (l) => emit(NoteStateFailure(l)),
            (r) => emit(NoteStateDeleted())
          );
    });

    on<NoteEventGetByUser>((event, emit) async {
      emit(const NoteStateLoading());

      Either<Notefailure, List<NoteDomain>> result =
          await noteRepositoryInterface.getNotesForUser(event.userId);

          result.fold(
            (l) => emit(NoteStateFailure(l)),
            (r) => emit(NoteStateSuccessMultiple(r))
          );
    });

  }
}
