import 'package:equatable/equatable.dart';

class TipType extends Equatable {
  String? tip_type;
  TipType({required this.tip_type}) {
    if (this.tip_type! != "HEALTH" &&
        this.tip_type! != "PSYCHOLOGICAL" &&
        this.tip_type! != "FOOD" &&
        this.tip_type! != "EXERCISE") {
      throw Exception('Enter correct note title');
    }
  }

  @override
  String toString() {
    return tip_type!;
  }

  @override
  List<Object> get props => [tip_type!];
}
