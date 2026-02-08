import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/auth/forgot/view/forgot_screen.dart';
import 'package:flutter_application_1/presentation/auth/login/view/login_screen.dart';
import 'package:flutter_application_1/presentation/auth/signup/view/signup_screen.dart';
import 'package:flutter_application_1/presentation/splash/splash_screen.dart';

class Routes {
  static const String splashRoute = "/splash";
  static const String loginRoute = "/loginRoute";
  static const String signupRoute = "/signupRoute";
  static const String forgotRoute = "/forgotRoute";

}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.signupRoute:
        return MaterialPageRoute(builder: (_) => const SignupScreen());
      case Routes.forgotRoute:
        return MaterialPageRoute(builder: (_) => const ForgotScreen());

      default:
        return unDefineRoute();
    }
  }

  static Route<dynamic> unDefineRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(body: Center(child: Text('NO ROUTES FOUND'))),
    );
  }
}
