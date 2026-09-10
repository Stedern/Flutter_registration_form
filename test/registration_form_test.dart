import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:registration_form/main.dart';

void main() {
  testWidgets('registration form starts with disabled register button',
      (tester) async {
    await tester.pumpWidget(const RegistrationApp());

    expect(find.text('Enter your details'), findsNothing);
    final registerButton = tester.widget<FilledButton>(
      find.widgetWithText(FilledButton, 'Submit'),
    );
    expect(registerButton.onPressed, isNull);
  });

  testWidgets('successful submit clears fields without validation errors',
      (tester) async {
    await tester.pumpWidget(const RegistrationApp());

    final fields = find.byType(TextFormField);
    await tester.enterText(fields.at(0), 'Juan');
    await tester.enterText(fields.at(1), 'Dela Cruz');
    await tester.enterText(fields.at(2), 'juan@example.com');
    await tester.enterText(fields.at(3), 'Password1');
    await tester.enterText(fields.at(4), 'Password1');
    await tester.pump();

    await tester.tap(find.widgetWithText(FilledButton, 'Submit'));
    await tester.pumpAndSettle();

    expect(find.text('Registration successful'), findsOneWidget);
    expect(find.text('First name is required'), findsNothing);
    expect(find.text('Last name is required'), findsNothing);
    expect(find.text('Email is required'), findsNothing);
  });
}
