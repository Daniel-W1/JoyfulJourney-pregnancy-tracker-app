import 'package:frontend/infrastructure/tip/tip_api.dart';
import 'package:test/test.dart';
import 'package:dartz/dartz.dart';
import 'package:frontend/domain/tip/tip_domain.dart';
import 'package:frontend/domain/tip/tip_failure.dart';
import 'package:frontend/domain/tip/tip_form.dart';
import 'package:frontend/infrastructure/tip/tip_repository.dart';
import 'package:mockito/mockito.dart';

class MockTipRepository extends Mock implements TipRepository {}

void main() {
  late TipRepository tipRepository;
  late MockTipRepository mockTipRepository;

  setUp(() {
    mockTipRepository = MockTipRepository();
    tipRepository = TipRepository(mockTipRepository as TipAPI);
  });

  group('addTip', () {
    test('should return TipDomain when repository call is successful', () async {
      // Arrange
      final tipForm = TipForm(title: 'Tip 1', body: 'This is a tip', type: '');
      final tipDomain = TipDomain(id: '1', title: 'Tip 1', body: 'This is a tip', type: '');

      when(mockTipRepository.addTip(tipForm))
          .thenAnswer((_) async => right(tipDomain));

      // Act
      final result = await tipRepository.addTip(tipForm);

      // Assert
      expect(result, equals(right(tipDomain)));
      verify(mockTipRepository.addTip(tipForm)).called(1);
    });

    test('should return TipFailure.serverError when repository call fails', () async {
      // Arrange
      final tipForm = TipForm(title: 'Tip 1', body: 'This is a tip', type: '');

      when(mockTipRepository.addTip(tipForm))
          .thenAnswer((_) async => left(TipFailure.serverError()));

      // Act
      final result = await tipRepository.addTip(tipForm);

      // Assert
      expect(result, equals(left(TipFailure.serverError())));
      verify(mockTipRepository.addTip(tipForm)).called(1);
    });
  });

  group('updateTip', () {
    test('should return TipDomain when repository call is successful', () async {
      // Arrange
      final tipId = '1';
      final tipForm = TipForm(title: 'Updated Tip', body: 'This is a tip', type: '');
      final tipDomain = TipDomain(id: '1', title: 'Updated Tip', body: 'This is a tip', type: '');

      when(mockTipRepository.updateTip(tipForm: tipForm, tipId: tipId))
          .thenAnswer((_) async => right(tipDomain));

      // Act
      final result = await tipRepository.updateTip(tipForm: tipForm, tipId: tipId);

      // Assert
      expect(result, equals(right(tipDomain)));
      verify(mockTipRepository.updateTip(tipForm: tipForm, tipId: tipId)).called(1);
    });

    test('should return TipFailure.serverError when repository call fails', () async {
      // Arrange
      final tipId = '1';
      final tipForm = TipForm(title: 'Updated Tip', body: 'This is a tip', type: '');

      when(mockTipRepository.updateTip(tipForm: tipForm, tipId: tipId))
          .thenAnswer((_) async => left(TipFailure.serverError()));

      // Act
      final result = await tipRepository.updateTip(tipForm: tipForm, tipId: tipId);

      // Assert
      expect(result, equals(left(TipFailure.serverError())));
      verify(mockTipRepository.updateTip(tipForm: tipForm, tipId: tipId)).called(1);
    });
  });

  group('getTipById', () {
    test('should return TipDomain when repository call is successful', () async {
      // Arrange
      final tipId = '1';
      final tipDomain = TipDomain(id: '1', title: 'Tip 1', body: 'This is a tip', type: '');

      when(mockTipRepository.getTipById(tipId))
          .thenAnswer((_) async => right(tipDomain));

      // Act
      final result = await tipRepository.getTipById(tipId);

      // Assert
      expect(result, equals(right(tipDomain)));
      verify(mockTipRepository.getTipById(tipId)).called(1);
    });

    test('should return TipFailure.serverError when repository call fails', () async {
      // Arrange
      final tipId = '1';

      when(mockTipRepository.getTipById(tipId))
          .thenAnswer((_) async => left(TipFailure.serverError()));

      // Act
      final result = await tipRepository.getTipById(tipId);

      // Assert
      expect(result, equals(left(TipFailure.serverError())));
      verify(mockTipRepository.getTipById(tipId)).called(1);
    });
  });

  group('deleteTip', () {
    test('should return Unit when repository call is successful', () async {
      // Arrange
      final tipId = '1';

      when(mockTipRepository.deleteTip(tipId))
          .thenAnswer((_) async => right(unit));

      // Act
      final result = await tipRepository.deleteTip(tipId);

      // Assert
      expect(result, equals(right(unit)));
      verify(mockTipRepository.deleteTip(tipId)).called(1);
    });

    test('should return TipFailure.serverError when repository call fails', () async {
      // Arrange
      final tipId = '1';

      when(mockTipRepository.deleteTip(tipId))
          .thenAnswer((_) async => left(TipFailure.serverError()));

      // Act
      final result = await tipRepository.deleteTip(tipId);

      // Assert
      expect(result, equals(left(TipFailure.serverError())));
      verify(mockTipRepository.deleteTip(tipId)).called(1);
    });
  });

  group('getTipsByType', () {
    test('should return List<TipDomain> when repository call is successful', () async {
      // Arrange
      final type = 'type1';
      final tips = [
        TipDomain(id: '1', title: 'Tip 1', body: 'This is a tip', type: ''),
        TipDomain(id: '2', title: 'Tip 2', body: 'This is a tip', type: ''),
      ];

      when(mockTipRepository.getTipsByType(type))
          .thenAnswer((_) async => right(tips));

      // Act
      final result = await tipRepository.getTipsByType(type);

      // Assert
      expect(result, equals(right(tips)));
      verify(mockTipRepository.getTipsByType(type)).called(1);
    });

    test('should return TipFailure.serverError when repository call fails', () async {
      // Arrange
      final type = 'type1';

      when(mockTipRepository.getTipsByType(type))
          .thenAnswer((_) async => left(TipFailure.serverError()));

      // Act
      final result = await tipRepository.getTipsByType(type);

      // Assert
      expect(result, equals(left(TipFailure.serverError())));
      verify(mockTipRepository.getTipsByType(type)).called(1);
    });
  });

  group('getTips', () {
    test('should return List<TipDomain> when repository call is successful', () async {
      // Arrange
      final tips = [
        TipDomain(id: '1', title: 'Tip 1', body: 'This is a tip', type: ''),
        TipDomain(id: '2', title: 'Tip 2', body: 'This is a tip', type: ''),
      ];

      when(mockTipRepository.getTips())
          .thenAnswer((_) async => right(tips));

      // Act
      final result = await tipRepository.getTips();

      // Assert
      expect(result, equals(right(tips)));
      verify(mockTipRepository.getTips()).called(1);
    });

    test('should return TipFailure.serverError when repository call fails', () async {
      // Arrange
      when(mockTipRepository.getTips())
          .thenAnswer((_) async => left(TipFailure.serverError()));

      // Act
      final result = await tipRepository.getTips();

      // Assert
      expect(result, equals(left(TipFailure.serverError())));
      verify(mockTipRepository.getTips()).called(1);
    });
  });
}
