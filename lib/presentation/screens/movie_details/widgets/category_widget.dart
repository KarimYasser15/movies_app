import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/config/theme/app_styles.dart';
import 'package:movies_app/core/utils/colors_manager.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 65.w,
      // height: 25.h,
      //padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 19.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.r),
          border: Border.all(color: ColorsManager.genreTypeColor),
          ),
      child: Center(
        child: Text(
          "Action",
          style: AppStyles.genreType,
        ),
      ),
    );
  }
}
