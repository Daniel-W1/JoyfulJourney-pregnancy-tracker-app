import 'package:frontend/domain/tip/tip.dart';

class TipEvent {
  const TipEvent._();

  const factory TipEvent.getAll() = TipEventGetAll;

  const factory TipEvent.getByType({required String type}) = TipEventGetByType;

  const factory TipEvent.add({required TipForm tipForm}) = TipEventAdd;

  const factory TipEvent.update({required TipForm tipForm, required String tipId}) = TipEventUpdate;

  const factory TipEvent.delete({required String tipId}) = TipEventDelete;
}

class TipEventGetAll extends TipEvent {
  const TipEventGetAll() : super._();
}

class TipEventGetByType extends TipEvent {
  final String type;

  const TipEventGetByType({required this.type}) : super._();
}

class TipEventAdd extends TipEvent {
  final TipForm tipForm;

  const TipEventAdd({required this.tipForm}) : super._();
}

class TipEventUpdate extends TipEvent {
  final TipForm tipForm;
  final String tipId;

  const TipEventUpdate({required this.tipForm, required this.tipId}) : super._();
}

class TipEventDelete extends TipEvent {
  final String tipId;

  const TipEventDelete({required this.tipId}) : super._();
}