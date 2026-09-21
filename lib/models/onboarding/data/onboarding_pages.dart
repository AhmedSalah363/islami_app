import 'package:islami_app/models/onboarding/models/onboarding_model.dart';
import 'package:islami_app/utils/app_assets.dart';

final List<OnboardingModel> pages = const [
  OnboardingModel(
    image: AppAssets.welcom,
    title: 'welcome to islami app',
    description: '',
  ),
  OnboardingModel(
    image: AppAssets.kabba,
    title: 'welcome to islami app',
    description: 'we are happy to have you in our community.',
  ),
  OnboardingModel(
    image: AppAssets.moshaf,
    title: 'Reading Quran',
    description: 'Read, and your lord is the most Generous',
  ),
  OnboardingModel(
    image: AppAssets.sebha,
    title: 'Bearish',
    description: 'Praise be to Allah, the Lord of the Worlds',
  ),
  OnboardingModel(
    image: AppAssets.mic,
    title: 'Holy Quran Readio',
    description:
        'You can listen to the Holy Quran Radio through this app for free and easy',
  ),
];
