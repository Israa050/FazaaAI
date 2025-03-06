import 'package:flutter/material.dart';
import 'package:salam_hack/core/router/routes.dart';
import 'package:salam_hack/features/auth/screens/login_page.dart';
import 'package:salam_hack/features/auth/screens/signup_page.dart';
import 'package:salam_hack/features/home/home_page.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => LoginPage(),
        );

      case Routes.signupScreen:
        return MaterialPageRoute(
          builder: (_) => SignupPage(),
        );

      default:
        return null;
    }
  }
}
