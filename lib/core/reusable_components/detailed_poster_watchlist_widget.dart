import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/reusable_components/detailed_poster_watchlist_item.dart';
import 'package:movies_app/core/utils/routes_manager.dart';
import '../../../../config/theme/app_styles.dart';
import '../../../../core/utils/colors_manager.dart';

class DetailedPosterWatchlistWidget extends StatelessWidget {
  DetailedPosterWatchlistWidget(
      {super.key, required this.categoryName, this.morePadding = false});

  bool morePadding;
  String categoryName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15.h, bottom: 13.h),
      color: ColorsManager.darkGrey,
      child: Padding(
        padding: EdgeInsets.only(left: morePadding ? 22.w : 13.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Recommended",
              style: AppStyles.categoryType,
            ),
            SizedBox(
              height: 12.h,
            ),
            SizedBox(
              height: 180.h,
              child: ListView.builder(
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(right: 13.w),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(4.r),
                      child: InkWell(
                          onTap: () => Navigator.pushNamed(
                              context, RoutesManager.movieDetails),
                          child: DetailedPosterWatchlistItem())),
                ),
                scrollDirection: Axis.horizontal,
                itemCount: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
