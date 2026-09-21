// import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/models/onboarding/data/onboarding_pages.dart';
import 'package:islami_app/utils/app_assets.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami_app/utils/app_routes.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  // final int _dotsCount = 5;
  final int _currentPage = 0;

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
                  child: IntroductionScreen(
                    globalBackgroundColor: const Color(0xff202020),
                    controlsPadding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 24,
                    ),
                    controlsMargin: const EdgeInsets.only(bottom: 10),
                    showBackButton: _currentPage == 0,
                    back: const Text(
                      "Back",
                      style: TextStyle(
                        color: Color(0xffE2BE7F),
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    next: const Text(
                      "Next",
                      style: TextStyle(
                        color: Color(0xffE2BE7F),
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    done: const Text(
                      "Finish",
                      style: TextStyle(
                        color: Color(0xffE2BE7F),
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    dotsDecorator: const DotsDecorator(
                      color: Color(0xff707070),
                      activeColor: Color(0xffE2BE7F),
                      size: Size(8, 8),
                      activeSize: Size(22, 8),
                      spacing: EdgeInsets.symmetric(horizontal: 4),
                      activeShape: StadiumBorder(),
                    ),

                    // onChange: (index) {
                    //   setState(() {
                    //     _currentPage = index;
                    //   });
                    // },
                    onDone: () => Navigator.pushReplacementNamed(
                      context,
                      AppRoutes.homeRoute,
                    ),

                    pages: pages.map((page) {
                      return PageViewModel(
                        title: page.title,
                        body: page.description,
                        image: Image.asset(page.image),
                        decoration: const PageDecoration(
                          bodyTextStyle: TextStyle(
                            color: Color(0xffE2BE7F),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          titleTextStyle: TextStyle(
                            color: Color(0xffE2BE7F),
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                          // pageColor: Color(0xff202020),
                          imageFlex: 1,
                          bodyFlex: 0,
                          contentMargin: EdgeInsets.zero,
                        ),
                      );
                    }).toList(),
                  ),
                ),

                // SizedBox(height: 16.0),
                // Padding(
                //   padding: const EdgeInsets.only(bottom: 24.0),
                //   child: DotsIndicator(
                //     dotsCount: _dotsCount,
                //     position: _currentPage.toDouble(),
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     decorator: DotsDecorator(
                //       color: Color(0xFF707070),
                //       activeColor: Color(0xFFFFD482),
                //       size: const Size.square(9.0),
                //       activeSize: const Size(18.0, 9.0),
                //       activeShape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(5.0),
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
