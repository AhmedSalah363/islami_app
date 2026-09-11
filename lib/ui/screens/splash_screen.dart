import 'package:flutter/material.dart';
import 'package:islami_app/utils/app_assets.dart';
import 'package:animate_do/animate_do.dart';
import 'package:islami_app/utils/app_routes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AppAssets.splashScreen, fit: BoxFit.cover),
          ZoomIn(
            onFinish: (direction) => Navigator.pushReplacementNamed(
              context,
              AppRoutes.introductionRoute,
            ),
            duration: Duration(seconds: 2),
            child: Center(
              child: Image.asset(
                AppAssets.islamiLogo,
                width: 200,
                height: 200,
                alignment: AlignmentGeometry.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
