import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/utils/app_assets.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  final int _dotsCount = 5;
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Color(0xFF202020),
          body: SafeArea(
            child: Column(
              children: [
                Image.asset(AppAssets.mosque),
                Expanded(
                  child: PageView(
                    onPageChanged: (index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                    children: [
                      Image.asset(AppAssets.welcom),
                      Image.asset(AppAssets.kabba),
                      Image.asset(AppAssets.moshaf),
                      Image.asset(AppAssets.sebha),
                      Image.asset(AppAssets.mic),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 24.0),
                  child: DotsIndicator(
                    dotsCount: _dotsCount,
                    position: _currentPage.toDouble(),
                    mainAxisAlignment: MainAxisAlignment.center,
                    decorator: DotsDecorator(
                      color: Color(0xFF707070),
                      activeColor: Color(0xFFFFD482),
                      size: const Size.square(9.0),
                      activeSize: const Size(18.0, 9.0),
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
