import 'package:flutter_test/flutter_test.dart';

import 'package:practice/main.dart';

void main() {
  testWidgets('signup page loads', (WidgetTester tester) async {
    await tester.pumpWidget(const Signup());

    expect(find.text('Signup'), findsOneWidget);
    expect(find.text('Welcome to the signup page!'), findsOneWidget);
  });
}
