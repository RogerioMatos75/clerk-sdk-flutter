import 'package:flutter/material.dart';
import 'package:clerk_flutter/clerk_flutter.dart';

void main() {
  const publishableKey =
      'pk_test_Y2FyZWZ1bC1mZWxpbmUtNTQuY2xlcmsuYWNjb3VudHMuZGV2JA';
  runApp(const ExampleApp(publishableKey: publishableKey));
}

/// Example App
class ExampleApp extends StatelessWidget {
  /// Constructs an instance of Example App
  const ExampleApp({super.key, required this.publishableKey});

  /// Publishable Key
  final String publishableKey;

  @override
  Widget build(BuildContext context) {
    return ClerkAuth(
      config: ClerkAuthConfig(publishableKey: publishableKey),
      child: MaterialApp(
        theme: ThemeData.light(),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SafeArea(
            child: ClerkErrorListener(
              child: ClerkAuthBuilder(
                signedInBuilder: (context, authState) {
                  return const ClerkUserButton();
                },
                signedOutBuilder: (context, authState) {
                  return const ClerkAuthentication();
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
