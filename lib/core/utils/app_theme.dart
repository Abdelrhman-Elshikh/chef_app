import 'package:chef_app/core/utils/app_colors.dart';
import 'package:chef_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData getThemeData() {
  return ThemeData(
    primaryColor: AppColors.KPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.KPrimaryColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            textStyle: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 24.h,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            backgroundColor: AppColors.KPrimaryColor,
            fixedSize: Size(327.w, 42.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.h),
            ))),
    textTheme:
        TextTheme(displayLarge: boldStyle(), displayMedium: regularStyle()),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.h),
          borderSide: BorderSide(color: AppColors.KGreyColor, width: 1.h)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.h),
          borderSide: BorderSide(color: AppColors.KGreyColor, width: 1.h)),
      hintStyle: boldStyle(color: AppColors.KGreyColor, fontSize: 16.h),
    ),
  );
}
