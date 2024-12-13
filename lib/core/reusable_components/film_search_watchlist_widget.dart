import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/config/theme/app_styles.dart';
import 'package:movies_app/core/reusable_components/poster_watchlist_widget.dart';
import 'package:movies_app/core/utils/colors_manager.dart';
import 'package:movies_app/core/utils/strings_manager.dart';

class FilmSearchWatchlistWidget extends StatelessWidget {
  const FilmSearchWatchlistWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h, left: 17.h),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(4.r),
                  child: SizedBox(
                      width: 150.w,
                      child: PosterWatchlistWidget(
                          posterPath: StringsManager.imagePath)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Elevation",
                        style:
                            AppStyles.filmTitle(fontSize: 15, isPoppinsFont: false),
                      ),
                      Text("2019", style: AppStyles.filmInfo(fontSize: 13)),
                      Text("Rosa Salazar", style: AppStyles.filmInfo(fontSize: 13))
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 15.h,),
            Divider(height: 1.h,color: ColorsManager.lightGrey,endIndent: 17.w,thickness: 2.sp,)
          ],
        ),
      ),
    );
  }
}
