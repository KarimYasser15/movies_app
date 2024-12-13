import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/config/theme/app_styles.dart';
import 'package:movies_app/core/utils/colors_manager.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
      inputDecorationTheme: InputDecorationTheme(
          focusColor: Colors.white,
          fillColor: ColorsManager.genreTypeColor,
          filled: true,
          hintStyle: AppStyles.searchHintText,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40.r),
              borderSide: const BorderSide(
                color: Colors.white,
              )),

          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40.r),
              borderSide: const BorderSide(
                color: Colors.white,
              )),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40.r),
              borderSide: const BorderSide(
                color: Colors.white,
              )),
          ),
      scaffoldBackgroundColor: ColorsManager.lightBlack,
      appBarTheme: AppBarTheme(
        color: ColorsManager.black,
        foregroundColor: Colors.white,
        elevation: 10.h,
        centerTitle: true,
        titleTextStyle: AppStyles.filmTitle(fontSize: 20, isPoppinsFont: false),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: ColorsManager.lightBlack,
          selectedItemColor: ColorsManager.yellow,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          elevation: 30.h,
          selectedLabelStyle:
              AppStyles.bottomNavigationBar(color: ColorsManager.yellow),
          unselectedLabelStyle:
              AppStyles.bottomNavigationBar(color: ColorsManager.lightGrey)));
}
