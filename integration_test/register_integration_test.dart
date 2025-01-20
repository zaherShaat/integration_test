import 'package:automated_testing/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group(
    'register widgets test',
    () {
      testWidgets('write in name field', (tester) async {
        // Load app widget.
        await tester.pumpWidget(const MainApp());

        // Get my field by key:
        final nameFieldFinder = find.byKey(const ValueKey('Name'));

        // Emulate an enter of text .
        await tester.enterText(nameFieldFinder, "Name field test");

        // Trigger a frame.
        await tester.pumpAndSettle();

        // Verify the field has its correct value.
        expect(find.text('Name field test'), findsOneWidget);
      });
      testWidgets('write in email field', (tester) async {
        const strValue = 'Email field test';
        // Load app widget.
        await tester.pumpWidget(const MainApp());
        // Get my field by key:
        final nameFieldFinder = find.byKey(const ValueKey('Email'));

        // Emulate an enter of text .
        await tester.enterText(nameFieldFinder, strValue);

        // Trigger a frame.
        await tester.pumpAndSettle();

        // Verify the field has its correct value.
        expect(find.text(strValue), findsOneWidget);
      });
      testWidgets('write in password field', (tester) async {
        // Load app widget.
        await tester.pumpWidget(const MainApp());
        // Get my field by key:
        final nameFieldFinder = find.byKey(const ValueKey('Password'));

        // Emulate an enter of text .
        await tester.enterText(nameFieldFinder, "Password field test");

        // Trigger a frame.
        await tester.pumpAndSettle();

        // Verify the field has its correct value.
        expect(find.text('Password field test'), findsOneWidget);
      });
    },
  );
}
