import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_api_studies/main.dart';

void main() {
  testWidgets('counter increments smoke test', (WidgetTester tester) async {
    // build out app and trigger a frame
    await tester.pumpWidget(const MyApp());

    //  verify that our counter starts at 0
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // tap the '+' icon and trigger a frame
    await tester.tap(find.byIcon(Icons.add));
    // used to update state
    await tester.pump();

    //  verify taht our counter has incremented
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    //  verify taht our counter has incremented
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsNothing);
    expect(find.text('2'), findsOneWidget);
  });
}
