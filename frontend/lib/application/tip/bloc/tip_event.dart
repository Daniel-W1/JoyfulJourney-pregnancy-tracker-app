import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/tip/tip.dart';

part 'tip_event.freezed.dart';

@freezed
class TipEvent with _$TipEvent {
  const factory TipEvent.getAll() = TipEventGetAll;
  const factory TipEvent.getByType({required String type}) = TipEventGetByType;
  const factory TipEvent.add({required TipForm tipForm}) = TipEventAdd;
  const factory TipEvent.update(
      {required TipForm tipForm, required String tipId}) = TipEventUpdate;
  const factory TipEvent.delete({required String tipId}) = TipEventDelete;
}
