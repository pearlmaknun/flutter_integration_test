import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

// 5. Import the app that you want to test
import 'package:flutter_integration_test/main.dart' as app;

void main() {
  group('App Test', () {

    // 3. Add the IntegrationTestWidgetsFlutterBinding and .ensureInitialized
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();

    // 4. Create your test case
    testWidgets('full app text', (tester) async {
      // 6. Execute the app.main() function
      app.main();

      // 7. Wait until the app has settled: this means that the frame from before
      // that's not change anything so no animation is running,
      // no entering some data, etc.
      await tester.pumpAndSettle();

      // 8. Create finders for email, password and login button
      // in the tutorial use byType(TextFormField).first
      final emailFormField = find.byKey(Key('email'));
      final passwordFormField = find.byKey(Key('password'));
      final loginButton = find.byKey(Key('login_button'));

      // 9. Enter text for the email address
      await tester.enterText(emailFormField, "almaknunlulu6@gmail.com");
      // 10. Enter text for the password
      await tester.enterText(passwordFormField, "12345678");

      await tester.pumpAndSettle();

      // 11. Tap on the login button and wait until it settled
      await tester.tap(loginButton);
      await tester.pumpAndSettle();

      // 12. Find the first checkbox in the screen
      // 13. Check the semantics of the checkbox if it is not checked
      // and check the semantics and wait until it settled
      // 14. Expect the result to be checked
    });
  });
}