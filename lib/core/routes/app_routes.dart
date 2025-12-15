
import 'package:flutter/material.dart';
import 'package:grocery_app/core/routes/routes.dart';
import 'package:grocery_app/features/splash/ui/splash_screen.dart';

class AppRoutes {
 static Route<dynamic>? onGenerateRoute(RouteSettings setting) {
    switch (setting.name) {
      case Routes.splashScreen :
        return MaterialPageRoute(builder: (_)=>SplashScreen());
    }
    return null;
  }
}