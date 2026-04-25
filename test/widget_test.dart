import 'package:flutter_test/flutter_test.dart';

import 'package:tabactivityfragment/main.dart';

void main() {
  testWidgets('renders branded app shell with tab labels', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('TabBook Pro'), findsOneWidget);
    expect(find.text('Home'), findsWidgets);
    expect(find.text('Friends'), findsOneWidget);
    expect(find.text('Videos'), findsOneWidget);
    expect(find.text('Notifications'), findsOneWidget);
    expect(find.text('Menu'), findsOneWidget);
    expect(find.text('Home Feed'), findsOneWidget);
  });

  testWidgets('switches to videos tab and displays video content', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.text('Videos').first);
    await tester.pumpAndSettle();

    expect(find.text('Video Studio'), findsOneWidget);
    expect(find.text('Upload queue with progress tracking'), findsOneWidget);
  });
}
