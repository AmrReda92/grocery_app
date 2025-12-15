import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app/core/routes/app_routes.dart';
import 'package:grocery_app/core/routes/routes.dart';

class GroceryApp extends StatelessWidget {
  const GroceryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 869),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        theme: ThemeData(
          appBarTheme: AppBarThemeData(
            backgroundColor: Colors.white
          ),
          scaffoldBackgroundColor: Colors.white
        ),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRoutes.onGenerateRoute ,
        initialRoute: Routes.homeScreen,
      ),
    );
  }
}
