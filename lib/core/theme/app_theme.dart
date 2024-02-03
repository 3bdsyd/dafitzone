import 'package:dafitzone/core/constants/app_color.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final themeData = ThemeData(
    useMaterial3: true,
    fontFamily: 'El Messiri',
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 25,
        color: AppColor.blackColor,
        fontWeight: FontWeight.w700,
      ),
      titleMedium: TextStyle(
        fontSize: 18,
        color: AppColor.blackColor,
        fontWeight: FontWeight.w400,
      ),
      titleSmall: TextStyle(
        color: AppColor.blackColor,
        fontSize: 14,
        fontWeight: FontWeight.w300,
      ),
      bodyLarge: TextStyle(
        color: AppColor.blackColor,
        fontWeight: FontWeight.w600,
        fontSize: 20,
      ),
      bodyMedium: TextStyle(
        color: AppColor.blackColor,
        fontWeight: FontWeight.w400,
        fontSize: 18,
      ),
      bodySmall: TextStyle(
        fontSize: 16,
        color: AppColor.blackColor,
        fontWeight: FontWeight.w300,
      ),
      labelLarge: TextStyle(
        color: AppColor.blackColor,
        fontSize: 14,
        fontWeight: FontWeight.w600,
        letterSpacing: .1,
      ),
      labelMedium: TextStyle(
        fontSize: 12,
        color: AppColor.blackColor,
        fontWeight: FontWeight.w500,
        letterSpacing: .1,
      ),
      labelSmall: TextStyle(
        fontSize: 14,
        color: AppColor.blackColor,
        fontWeight: FontWeight.w400,
        letterSpacing: .1,
      ),
    ),
  );
}
