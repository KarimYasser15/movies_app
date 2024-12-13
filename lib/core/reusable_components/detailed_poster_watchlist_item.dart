import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movies_app/core/reusable_components/film_info_widget.dart';
import 'package:movies_app/core/reusable_components/poster_watchlist_widget.dart';
import 'package:movies_app/core/utils/assets_manager.dart';
import 'package:movies_app/core/utils/colors_manager.dart';
import 'package:movies_app/core/utils/strings_manager.dart';

import '../../config/theme/app_styles.dart';

class DetailedPosterWatchlistItem extends StatelessWidget {
  const DetailedPosterWatchlistItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 185.h,
      color: ColorsManager.lightDarkGrey,
      child: Column(
        children: [
          Expanded(
            child: SizedBox(
              width: double.infinity,
                child: PosterWatchlistWidget(
                    posterPath: StringsManager.posterPath)),
          ),
          SizedBox(height: 5.h,),
          Padding(
            padding: EdgeInsets.only(left: 6.w, bottom: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(AssetsManager.starIcon),
                    SizedBox(width: 5.w,),
                    Text("7,7", style: AppStyles.filmTitle(fontSize: 10, isPoppinsFont: true))
                  ],
                ),
                SizedBox(height: 2.h,),
                FilmInfoWidget(isSmallDetails: true,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
