// test/widget_tests.dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lab13/custom_widgets.dart';
import 'package:lab13/login_screen.dart';
import 'package:lab13/registration_screen.dart';
import 'package:lab13/successful_screen.dart';


void main() {
  testWidgets('CustomTextField widget test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: CustomTextField(labelText: 'Test', icon: Icons.check, controller: TextEditingController()),
      ),
    );

    expect(find.text('Test'), findsOneWidget);
    expect(find.byIcon(Icons.check), findsOneWidget);
  });

  testWidgets('CustomButton widget test', (WidgetTester tester) async {
    bool buttonPressed = false;

    await tester.pumpWidget(
      MaterialApp(
        home: CustomButton(
          text: 'Test',
          onPressed: () {
            buttonPressed = true;
          },
        ),
      ),
    );

    await tester.tap(find.text('Test'));
    await tester.pump();

    expect(buttonPressed, true);
  });

  testWidgets('LoginScreen widget test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: LoginScreen(),
      ),
    );

    expect(find.text('Username'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
    expect(find.byType(CustomButton), findsOneWidget);
  });

  testWidgets('RegistrationScreen widget test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: RegistrationScreen(),
      ),
    );

    expect(find.text('Name'), findsOneWidget);
    expect(find.text('Email'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
    expect(find.text('Confirm Password'), findsOneWidget);
    expect(find.byType(CustomButton), findsOneWidget);
  });

  testWidgets('SuccessfulScreen widget test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: SuccessfulScreen(),
      ),
    );

    expect(find.text('Successful'), findsOneWidget);
  });
}
