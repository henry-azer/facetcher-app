import 'package:flutter/material.dart';
import 'package:flutter_starter/features/changed_password/presentation/screens/changing_password.dart';
import 'package:flutter_starter/features/user-history/presentation/screens/user_history_screen.dart';

import '../../core/utils/app_strings.dart';
import '../../features/drawing _details/presentation/screens/drawing_details_screen.dart';
import '../../features/home/presentation/screens/home_screen.dart';
import '../../features/login/presentation/screens/login_screen.dart';
import '../../features/splash/presentation/screens/splash_screen.dart';
import '../../features/user-profile/presentation/screens/user_profile_screen.dart';

class Routes {
  static const String initial = '/';
  static const String appHome = '/app-home';
  static const String login = '/login';
  static const String drawingDetails = '/drawing_details';
  static const String userHistory = '/user-history';
  static const String userProfile = '/user-profile';
  static const String changingPassword = '/changing_password';


}

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initial:
        return MaterialPageRoute(builder: (context,) {
          return const SplashScreen();
        }, settings: routeSettings);

      case Routes.appHome:
        return MaterialPageRoute(builder: (context) {
          return const HomeScreen();
        }, settings: routeSettings);

      case Routes.userHistory:
        return MaterialPageRoute(builder: (context) {
          return const UserHistoryScreen();
        }, settings: routeSettings);

      case Routes.userProfile:
        return MaterialPageRoute(builder: (context) {
          return const UserProfileScreen();
        }, settings: routeSettings);

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

      case Routes.changingPassword:
        return MaterialPageRoute(
            builder: (context) {
              return const ChangingPassword();
            },
            settings: routeSettings);
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
        builder: ((context) =>
        const Scaffold(
          body: Center(
            child: Text(AppStrings.noRouteFound),
          ),
        )));
  }
}