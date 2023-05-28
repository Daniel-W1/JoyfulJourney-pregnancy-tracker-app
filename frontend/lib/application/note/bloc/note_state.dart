
import 'package:frontend/domain/note/note.dart';

class NoteState {
  const NoteState._();

  const factory NoteState.initial() = NoteStateInitial;
  const factory NoteState.loading() = NoteStateLoading;
  const factory NoteState.successMultiple(List<NoteDomain> notes) = NoteStateSuccessMultiple;
  const factory NoteState.failure(NoteFailure failure) = NoteStateFailure;
  const factory NoteState.success(NoteDomain note) = NoteStateSuccess;
  const factory NoteState.deleted() = NoteStateDeleted;
}

class NoteStateInitial extends NoteState {
  const NoteStateInitial() : super._();
}

class NoteStateLoading extends NoteState {
  const NoteStateLoading() : super._();
}

class NoteStateSuccessMultiple extends NoteState {
  final List<NoteDomain> notes;

  const NoteStateSuccessMultiple(this.notes) : super._();
}

class NoteStateFailure extends NoteState {
  final NoteFailure failure;

  const NoteStateFailure(this.failure) : super._();
}

class NoteStateSuccess extends NoteState {
  final NoteDomain note;

  const NoteStateSuccess(this.note) : super._();
}

class NoteStateDeleted extends NoteState {
  const NoteStateDeleted() : super._();
}