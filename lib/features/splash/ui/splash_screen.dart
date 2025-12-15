import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/core/models/app_images.dart';
import 'package:grocery_app/core/routes/routes.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    navigateToHomeScreen();
    super.initState();
  }

  void navigateToHomeScreen ()async{
   await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacementNamed(context, Routes.homeScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppImages.logoSplash)
          ],
        ),
      ),
    );
  }
}
