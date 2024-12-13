import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/config/theme/app_styles.dart';
import 'package:movies_app/core/reusable_components/poster_watchlist_widget.dart';
import 'package:movies_app/core/utils/colors_manager.dart';
import 'package:movies_app/core/utils/routes_manager.dart';
import 'package:movies_app/core/utils/strings_manager.dart';

class NewReleasesWidget extends StatelessWidget {
  const NewReleasesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15.h, bottom: 13.h),
      color: ColorsManager.darkGrey,
      child: Padding(
        padding: EdgeInsets.only(left: 13.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "New Releases",
              style: AppStyles.categoryType,
            ),
            SizedBox(
              height: 12.h,
            ),
            SizedBox(
              height: 150.h,
              child: ListView.builder(
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(right: 13.w),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(4.r),
                      child: InkWell(
                          onTap: () => Navigator.pushNamed(
                              context, RoutesManager.movieDetails),
                          child: PosterWatchlistWidget(
                              posterPath: StringsManager.posterPath))),
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
