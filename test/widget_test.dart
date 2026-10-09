import 'package:flutter_test/flutter_test.dart';
import 'package:flutterfive/main.dart';

void main() {
  testWidgets('registration form shows validation errors when submitted empty', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Register Form'), findsOneWidget);
    await tester.tap(find.text('Submit Form'));
    await tester.pump();

    expect(find.text('Enter your name'), findsOneWidget);
    expect(find.text('Enter your phone number'), findsOneWidget);
    expect(find.text('Enter your email'), findsOneWidget);
    expect(find.text('Enter a password'), findsOneWidget);
    expect(find.text('Confirm your password'), findsOneWidget);
  });
}
