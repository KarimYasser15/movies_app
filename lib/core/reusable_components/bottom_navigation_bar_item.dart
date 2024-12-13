import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../utils/colors_manager.dart';

class CustomBottomNavigationBarItem {
  static BottomNavigationBarItem build(
      {required String label, required String iconPath}) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: EdgeInsets.only(bottom: 7.h),
        child: SvgPicture.asset(iconPath),
      ),
      label: label,
      activeIcon: Padding(
        padding: EdgeInsets.only(bottom: 7.h),
        child: SvgPicture.asset(
          iconPath,
          colorFilter:
              const ColorFilter.mode(ColorsManager.yellow, BlendMode.srcIn),
        ),
      ),
    );
  }
}
