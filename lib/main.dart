import 'package:flutter/material.dart';
import 'package:islami_app/UI/Home/home_screen.dart';
import 'package:islami_app/Utils/app_routes.dart';
import 'package:islami_app/Utils/app_theme.dart';

void main() {
  runApp(const IslamiApp());
}

class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.homeRouteName,
      routes: {AppRoutes.homeRouteName: (context) => const HomeScreen()},
      theme: AppTheme.lightMode,
      darkTheme: AppTheme.darkMode,
      themeMode: ThemeMode.dark,
    );
  }
}
