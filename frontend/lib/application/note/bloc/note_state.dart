import 'package:dartz/dartz.dart';
import 'package:frontend/domain/note/note.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_state.freezed.dart';

@freezed
abstract class NoteState with _$NoteState {
  const factory NoteState.initial() = NoteStateInitial;
  const factory NoteState.loading() = NoteStateLoading;
  const factory NoteState.successMultiple(List<NoteDomain> notes) = NoteStateSuccessMultiple;
  const factory NoteState.failure(Notefailure failure) = NoteStateFailure;
  const factory NoteState.success(NoteDomain note) = NoteStateSuccess;
  const factory NoteState.deleted(Unit unit) = NoteStateDeleted;
}
