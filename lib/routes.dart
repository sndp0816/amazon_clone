import 'package:amazon_clone_app/features/auth/screens/auth_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSetting) {
  switch (routeSetting.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
        settings: routeSetting,
        builder: (_) => const AuthScreen(),
      );

    default:
      return MaterialPageRoute(
        settings: routeSetting,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text(
              "Screen doesn't exist",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      );
  }
}
