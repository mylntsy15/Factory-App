import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:lab6_factory/main.dart' as app;

void main() {
  group("App Test", () {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();

    testWidgets(
      'full app test',
      (tester) async {
        app.main();
        await tester.pumpAndSettle();

        // Finding the phone number text field
        final phoneFormField = find.byKey(const Key('phone'));
        expect(phoneFormField, findsOneWidget);

        // Finding the terms checkbox
        final termsCheckbox = find.byType(Checkbox);
        expect(termsCheckbox, findsOneWidget);

        // Finding the activation code button
        final activationCodeButton = find.text('Get Activation Code');
        expect(activationCodeButton, findsOneWidget);

        // Entering phone number
        await tester.enterText(phoneFormField, "0194008122");

        // Tapping the terms checkbox
        await tester.tap(termsCheckbox);
        await tester.pump();

        // Tapping the activation code button
        await tester.tap(activationCodeButton);
        await tester.pumpAndSettle();

        final otpFormField = find.byKey(const Key('otp'));
        final activateButton = find.byKey(const Key('activateButton'));

        await tester.enterText(otpFormField, "123456");
        await tester.tap(activateButton);
        await tester.pumpAndSettle();
      },
    );
  });
}
