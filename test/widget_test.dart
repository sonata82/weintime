// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';
import 'package:weintime/auth_service.dart';

import 'package:weintime/main.dart';
import 'package:weintime/swagger_generated_code/wein_db.swagger.dart';

import 'widget_test.mocks.dart';

@GenerateMocks([WeinDb, AuthService])
void main() {
  testWidgets('Login page is available smoke test', (WidgetTester tester) async {
    var mockAuthService = MockAuthService();

    when(mockAuthService.isLoggedIn()).thenAnswer((_) async => false);

    // Build our app and trigger a frame.
    await tester.pumpWidget(
        MultiProvider(
          providers: [
            Provider<WeinDb>(create: (_) => MockWeinDb()),
            Provider<AuthService>.value(value: mockAuthService)
          ],
          child: MyApp()
        ));

    verify(mockAuthService.isLoggedIn());
    await tester.pumpAndSettle();

    expect(find.text('Username'), findsOneWidget);
  });
}
