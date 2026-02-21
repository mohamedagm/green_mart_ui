import 'package:flutter/material.dart';
import 'package:green_mart/core/theme/app_colors.dart';
import 'package:green_mart/core/theme/app_text_styles.dart';

class AppThemes {
  static ThemeData get light => ThemeData(
    fontFamily: 'Poppins',
    scaffoldBackgroundColor: AppColors.backgroundColor,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
      onSurface: AppColors.blackColor,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.backgroundColor,
      surfaceTintColor: Colors.transparent,
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColors.accentColor,
      filled: true,
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.primaryColor,
        padding: EdgeInsets.all(0),
        minimumSize: Size.zero,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.backgroundColor,
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: AppColors.greyColor,
      selectedLabelStyle: AppTextStyles.small.copyWith(
        fontWeight: FontWeight.w500,
        height: 1.8,
      ),
      unselectedLabelStyle: AppTextStyles.small.copyWith(
        fontWeight: FontWeight.w500,
        height: 1.8,
      ),
    ),
    dividerColor: Colors.transparent,
  );
}
