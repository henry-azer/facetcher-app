import 'package:flutter/material.dart';
import 'package:flutter_starter/features/login/presentation/screens/login_screen.dart';

import '../../core/utils/app_strings.dart';
import '../../features/drawing _details/drawing_details_screen.dart';
import '../../features/splash/presentation/screens/splash_screen.dart';

class Routes {
  static const String initial = '/';
  static const String appHome = '/app-home';
  static const String login = '/login';
  static const String drawingDetails = '/drawing_details';

}


class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initial:
        return MaterialPageRoute(
            builder: (
              context,
            ) {
              return const SplashScreen();
            },
            settings: routeSettings);

      //case Routes.appHome:
      //   return MaterialPageRoute(builder: (context) {
      //     return const HomeScreen();
      //   }, settings: routeSettings);//

      case Routes.login:
        return MaterialPageRoute(
            builder: (context) {
              return const LoginScreen();
            },
            settings: routeSettings);

      case Routes.drawingDetails:
        return MaterialPageRoute(
            builder: (context) {
              return const DrawingDetailsScreen();
            },
            settings: routeSettings);

      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
        builder: ((context) => const Scaffold(
              body: Center(
                child: Text(AppStrings.noRouteFound),
              ),
            )));
  }
}

