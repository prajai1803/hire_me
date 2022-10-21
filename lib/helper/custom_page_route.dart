import 'package:flutter/material.dart';
import 'package:hire_me/ui/pages/home_page/home_screen.dart';
import 'package:hire_me/ui/pages/splash_screen/splash_screen.dart';

class CustomRoute {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        MaterialPageRoute(
          builder: (context) => SplashScreen(),
        );
        break;
      case '/home':
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
    }
    return _errorRoute();
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (context) => Scaffold(
        body: Center(
          child: Text("Error1"),
        ),
      ),
    );
  }
}
