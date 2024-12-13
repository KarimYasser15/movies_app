import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_app/core/utils/colors_manager.dart';

class AppStyles {
  static bottomNavigationBar({required Color color}) {
    return GoogleFonts.inter(
        fontWeight: FontWeight.w400, color: color, fontSize: 8.sp);
  }

  static filmTitle({required int fontSize, required bool isPoppinsFont}) {
    if(isPoppinsFont)
      {
        return GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            fontSize: fontSize.sp,
            color: Colors.white);
      }
    return GoogleFonts.inter(
        fontWeight: FontWeight.w400,
        fontSize: fontSize.sp,
        color: Colors.white);

  }

  static TextStyle categoryType = GoogleFonts.inter(
      fontWeight: FontWeight.w400, fontSize: 15.sp, color: Colors.white);
  static TextStyle searchHintText = GoogleFonts.inter(
      fontWeight: FontWeight.w400, fontSize: 14.sp, color: ColorsManager.grey);
  static TextStyle categoryName = GoogleFonts.poppins(
      fontWeight: FontWeight.w600, fontSize: 14.sp, color: Colors.white);
  static TextStyle tabTitle = GoogleFonts.inter(
      fontWeight: FontWeight.w400, fontSize: 22.sp, color: Colors.white);
  static TextStyle genreType = GoogleFonts.inter(
      fontWeight: FontWeight.w400, fontSize: 10.sp, color: Colors.white);
  static TextStyle filmRating = GoogleFonts.poppins(
      fontWeight: FontWeight.w400, fontSize: 16.sp, color: Colors.white);
  static TextStyle filmDescription = GoogleFonts.inter(
      fontWeight: FontWeight.w400, fontSize: 10.sp, color: Colors.white);
  static filmInfo ({required int fontSize}) {
    return GoogleFonts.inter(
        fontWeight: FontWeight.w400,
        fontSize: fontSize.sp,
        color: ColorsManager.grey);
  }
}
