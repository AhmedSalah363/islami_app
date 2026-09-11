import 'package:flutter/material.dart';
import 'package:islami_app/ui/screens/home_screen.dart';
import 'package:islami_app/ui/screens/introduction_screen.dart';
import 'package:islami_app/ui/screens/splash_screen.dart';
import 'package:islami_app/utils/app_routes.dart';

void main() {
  runApp(const IslamiApp());
}

class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splashRoute,
      routes: {
        AppRoutes.splashRoute: (context) => const SplashScreen(),
        AppRoutes.homeRoute: (context) => const HomeScreen(),
        AppRoutes.introductionRoute: (context) => const IntroductionScreen(),
      },
    );
  }
}
