import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/application/tip/bloc/tip_bloc.dart';
import 'package:frontend/application/tip/bloc/tip_event.dart';
import 'package:frontend/application/tip/bloc/tip_state.dart';
import 'package:frontend/infrastructure/tip/tip_api.dart';
import 'package:frontend/infrastructure/tip/tip_repository.dart';
import 'package:frontend/presentation/tips/components/detail_page.dart';
import 'package:frontend/presentation/tips/components/tips_card.dart';
import 'package:frontend/presentation/tips/components/tips_model.dart';
import 'package:frontend/presentation/tips/home_page.dart';

class MockTipBloc extends MockBloc<TipEvent, TipState> implements TipBloc {}

void main() {
  group('TipsHomePage widget test', () {
    late MockTipBloc tipBloc;

    setUp(() {
      tipBloc = MockTipBloc();
    });

    testWidgets('renders TipsHomePage correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider<TipBloc>.value(
            value: tipBloc,
            child: TipsHomePage(),
          ),
        ),
      );

      // Verify the presence of the TipCard widget
      expect(find.byType(TipCard), findsNWidgets(4));
    });

    testWidgets('navigates to DetailPage when TipCard is pressed',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider<TipBloc>.value(
            value: tipBloc,
            child: TipsHomePage(),
          ),
          routes: {
            '/detail': (context) => DetailPage(
              tipsModel: TipsModel(
                imgPath: 'imgPath',
                text: 'text',
                id: 'id',
                type: 'type',
              ),
              type: 'type',
            ),
          },
        ),
      );

      // Tap the first TipCard
      await tester.tap(find.byType(TipCard).first);
      await tester.pumpAndSettle();

      // Verify that DetailPage is pushed onto the navigator
      expect(find.byType(DetailPage), findsOneWidget);
    });
  });
}

class TipCard {
}
