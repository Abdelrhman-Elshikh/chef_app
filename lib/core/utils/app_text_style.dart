import 'package:chef_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextStyle _textStyle({
  required Color color,
  required FontWeight fontWeight,
  required double fontSize,
}) {
  return GoogleFonts.lato(
    color: color,
    fontWeight: fontWeight,
    fontSize: fontSize.sp,
  );
}

TextStyle boldStyle({
  Color color = AppColors.KBlackColor,
  double fontSize = 24,
}) =>
    _textStyle(color: color, fontWeight: FontWeight.bold, fontSize: fontSize);

TextStyle regularStyle({
  Color color = AppColors.KBlackColor,
  double fontSize = 16,
}) =>
    _textStyle(color: color, fontWeight: FontWeight.normal, fontSize: fontSize);
