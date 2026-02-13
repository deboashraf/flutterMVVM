import 'package:flutter/material.dart';
import 'package:goldy/core/presentation/home_screen%20.dart';
import 'package:goldy/core/routing/routes.dart';
import 'package:goldy/feature/auth/presentauion/screens/weidget/gold_screen.dart';
import 'package:goldy/feature/auth/presentauion/screens/weidget/silver_screen.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.homeScreen:
        return MaterialPageRoute(builder: (context) => HomeScreen());

      case AppRoutes.GoldScreen:
        return MaterialPageRoute(builder: (context) => GoldScreen());
      case AppRoutes.SliverScreen:
        return MaterialPageRoute(builder: (context) => SilverScreen());

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
