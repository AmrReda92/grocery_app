import 'package:flutter/material.dart';
import 'package:grocery_app/core/routes/app_routes.dart';
import 'package:grocery_app/core/routes/routes.dart';

class GroceryApp extends StatelessWidget {
  const GroceryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoutes.onGenerateRoute ,
      initialRoute: Routes.splashScreen,
    );
  }
}
