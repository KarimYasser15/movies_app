import 'dart:ffi';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/config/theme/app_styles.dart';
import 'package:movies_app/core/utils/assets_manager.dart';

class CategoryImageWidget extends StatelessWidget {
  const CategoryImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
      Opacity(
        opacity: 0.6,
        child: Image.asset(
          AssetsManager.categoryImage,
          fit: BoxFit.fill,
          height: 90.h,
          width: 160.w,
        ),
      ),
      Text("Action", style: AppStyles.categoryName,),
    ]);
  }
}
