import 'package:flutter/material.dart';
import 'package:islami_app/UI/Home/Hadith%20Tab/hadith_tab.dart';
import 'package:islami_app/UI/Home/Quran%20Tab/quran_tab.dart';
import 'package:islami_app/UI/Home/Radio%20Tab/radio_tab.dart';
import 'package:islami_app/UI/Home/Time%20Tab/time_tab.dart';
import 'package:islami_app/UI/Home/sebiha%20Tab/sebiha_tab.dart';
import 'package:islami_app/Utils/app_assets.dart';
import 'package:islami_app/Utils/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 2;
  List<Widget> tabsList = [
    const SebihaTab(),
    const HadithTab(),
    const QuranTab(),
    const RadioTab(),
    const TimeTab(),
  ];
  List<String> backgroundImages = [
    AppAssets.sebihaBg,
    AppAssets.hadithBg,
    AppAssets.quranBg,
    AppAssets.radioBg,
    AppAssets.timeBg,
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          backgroundImages[selectedIndex],
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          bottomNavigationBar: BottomNavigationBar(
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
            currentIndex: selectedIndex,
            onTap: (index) {
              selectedIndex = index;
              setState(() {});
            },
            showUnselectedLabels: false,
            selectedItemColor: AppColors.whiteColor,
            unselectedItemColor: AppColors.blackColor,
            type: BottomNavigationBarType.fixed,
            backgroundColor: AppColors.primaryColor,
            items: [
              builtBottomNavigationBarItem(
                icon: AppAssets.sebihaIc,
                lable: 'Sebiha',
                index: 0,
              ),
              builtBottomNavigationBarItem(
                icon: AppAssets.hadithIc,
                lable: 'Hadith',
                index: 1,
              ),
              builtBottomNavigationBarItem(
                icon: AppAssets.quranIc,
                lable: 'Quran',
                index: 2,
              ),
              builtBottomNavigationBarItem(
                icon: AppAssets.radioIc,
                lable: 'Radio',
                index: 3,
              ),
              builtBottomNavigationBarItem(
                icon: AppAssets.timeIc,
                lable: 'Time',
                index: 4,
              ),
            ],
          ),
          body: SafeArea(
            child: Column(
              spacing: MediaQuery.of(context).size.height * 0.01,
              children: [
                Image.asset(AppAssets.islamiLogo),
                Expanded(child: tabsList[selectedIndex]),
              ],
            ),
          ),
        ),
      ],
    );
  }

  //-------------------------------------------------------------------------------------------------------------------------------
  BottomNavigationBarItem builtBottomNavigationBarItem({
    required String lable,
    required String icon,
    required int index,
  }) {
    return BottomNavigationBarItem(
      label: lable,
      icon: selectedIndex == index
          ? Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                color: AppColors.blackBgColor,
                borderRadius: BorderRadius.circular(66),
              ),
              child: ImageIcon(AssetImage(icon)),
            )
          : ImageIcon(AssetImage(icon)),
    );
  }
}
