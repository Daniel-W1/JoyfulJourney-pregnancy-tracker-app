import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/application/tip/bloc/tip_bloc.dart';
import 'package:frontend/application/tip/bloc/tip_event.dart';
import 'package:frontend/application/tip/bloc/tip_state.dart';
import 'package:frontend/domain/tip/tip.dart';
import 'package:mockito/mockito.dart';

class MockTipRepositoryInterface extends Mock implements TipRepositoryInterface {
  @override
  Future<Either<TipFailure, List<TipDomain>>> getTips() async {
    final tips = [
      TipDomain(title: 'Tip 1', body: 'Haile', type: 'Type 1'),
      TipDomain(title: 'Tip 2', body: 'Haile', type: 'Type 1')
    ];
    return Right(tips);
  }
}

void main() {
  group('TipBloc', () {
    late MockTipRepositoryInterface tipRepository;
    late TipBloc tipBloc;

    setUp(() {
      tipRepository = MockTipRepositoryInterface();
      tipBloc = TipBloc(tipRepositoryInterface: tipRepository);
    });

    tearDown(() {
      tipBloc.close();
    });

    test('emits TipStateLoading and TipStateSuccessMultiple when TipEventGetAll is added', () {
      final tips = [
        TipDomain(title: 'Tip 1', body: 'Haile', type: 'Type 1'),
        TipDomain(title: 'Tip 2', body: 'Haile', type: 'Type 1')
      ];

      when(tipRepository.getTips()).thenAnswer((_) async => Right(tips));

      expectLater(
        tipBloc,
        emitsInOrder([
          const TipStateLoading(),
          TipStateSuccessMultiple(tips),
        ]),
      );

      tipBloc.add(TipEventGetAll());

      // Ensure the getTips method is called on the tipRepository mock
      verify(tipRepository.getTips()).called(1);
    });

    // Add other test cases here

  });
}
