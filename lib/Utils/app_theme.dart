import 'package:flutter/material.dart';
import 'package:islami_app/Utils/app_colors.dart';
import 'package:islami_app/Utils/app_text_styles.dart';

class AppTheme {
  static ThemeData lightMode = ThemeData(
    textTheme: TextTheme(headlineLarge: AppTextStyles.bold16Whight),
  );
  static ThemeData darkMode = ThemeData(
    textTheme: TextTheme(
      headlineLarge: AppTextStyles.bold16Whight.copyWith(
        color: AppColors.primaryColor,
      ),
    ),
  );
}
