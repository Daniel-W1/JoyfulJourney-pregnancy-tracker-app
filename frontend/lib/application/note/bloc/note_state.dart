import 'package:frontend/domain/note/note.dart';

class NoteState {
  const NoteState._();

  const factory NoteState.initial() = NoteStateInitial;

  const factory NoteState.loading() = NoteStateLoading;

  const factory NoteState.successMultiple(List<NoteDomain> notes) = NoteStateSuccessMultiple;

  const factory NoteState.failure(NoteFailure failure) = NoteStateFailure;

  const factory NoteState.success(NoteDomain note) = NoteStateSuccess;

  const factory NoteState.deleted() = NoteStateDeleted;

  NoteState copyWith({
    List<NoteDomain>? notes,
    NoteFailure? failure,
    NoteDomain? note,
  }) {
    if (notes != null) {
      return NoteState.successMultiple(notes);
    } else if (failure != null) {
      return NoteState.failure(failure);
    } else if (note != null) {
      return NoteState.success(note);
    } else {
      return this;
    }
  }
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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NoteStateSuccessMultiple &&
          runtimeType == other.runtimeType &&
          notes == other.notes;

  @override
  int get hashCode => runtimeType.hashCode ^ notes.hashCode;
}

class NoteStateFailure extends NoteState {
  final NoteFailure failure;

  const NoteStateFailure(this.failure) : super._();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NoteStateFailure &&
          runtimeType == other.runtimeType &&
          failure == other.failure;

  @override
  int get hashCode => runtimeType.hashCode ^ failure.hashCode;
}

class NoteStateSuccess extends NoteState {
  final NoteDomain note;

  const NoteStateSuccess(this.note) : super._();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NoteStateSuccess &&
          runtimeType == other.runtimeType &&
          note == other.note;

  @override
  int get hashCode => runtimeType.hashCode ^ note.hashCode;
}

class NoteStateDeleted extends NoteState {
  const NoteStateDeleted() : super._();
}