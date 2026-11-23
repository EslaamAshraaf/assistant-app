import 'package:assistant_app/app/assistant_app.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setUpAll(() {
    GoogleFonts.config.allowRuntimeFetching = false;
  });

  testWidgets('shows the Chat tab first and switches between tabs', (tester) async {
    await tester.pumpWidget(const AssistantApp());
    await tester.pumpAndSettle();

    expect(find.text('Coming in Phase 2'), findsOneWidget);

    await tester.tap(find.text('Tasks'));
    await tester.pumpAndSettle();
    expect(find.text('Coming in Phase 3'), findsOneWidget);

    await tester.tap(find.text('Files'));
    await tester.pumpAndSettle();
    expect(find.text('Coming in Phase 4'), findsOneWidget);

    await tester.tap(find.text('Chat'));
    await tester.pumpAndSettle();
    expect(find.text('Coming in Phase 2'), findsOneWidget);
  });

  testWidgets('settings icon on the Chat app bar pushes the Settings page',
      (tester) async {
    await tester.pumpWidget(const AssistantApp());
    await tester.pumpAndSettle();

    await tester.tap(find.byTooltip('Settings'));
    await tester.pumpAndSettle();

    expect(find.text('Settings'), findsWidgets);
  });
}
