import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movies_app/config/theme/app_styles.dart';
import 'package:movies_app/core/reusable_components/detailed_poster_watchlist_widget.dart';
import 'package:movies_app/core/reusable_components/poster_watchlist_widget.dart';
import 'package:movies_app/core/utils/assets_manager.dart';
import 'package:movies_app/presentation/screens/movie_details/widgets/category_widget.dart';

import '../../../core/reusable_components/film_info_widget.dart';
import '../../../core/utils/strings_manager.dart';

class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Elevation"),
      ),
      body: ListView(children: [
        Column(
          children: [
            CachedNetworkImage(
              imageUrl: StringsManager.imagePath,
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) =>
                  const CircularProgressIndicator(),
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.only(left: 22.w, top: 13.h),
              child: Column(
                children: [
                  FilmInfoWidget(
                    isSmallDetails: false,
                    isHugeDetails: true,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(4.r),
                        child: SizedBox(
                            height: 200.h,
                            width: 130.w,
                            child: PosterWatchlistWidget(
                                posterPath: StringsManager.posterPath)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 11.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 80.h,
                              width: 200.w,
                              child: GridView.builder(
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 3,
                                        crossAxisSpacing: 10.w,
                                        mainAxisSpacing: 6.h,
                                        childAspectRatio: 2),
                                itemBuilder: (context, index) =>
                                    Center(child: CategoryWidget()),
                                itemCount: 5,
                              ),
                            ),
                            Container(
                              width: 220.w,
                              child: Text(
                                StringsManager.filmDescription,
                                style: AppStyles.filmDescription,
                                softWrap: true,
                                overflow: TextOverflow.visible,
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  AssetsManager.starIcon,
                                  height: 19.h,
                                  width: 20.w,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(
                                  "7,7",
                                  style: AppStyles.filmRating,
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        DetailedPosterWatchlistWidget(
          categoryName: "More Like This",
          morePadding: true,
        )
      ]),
    );
  }
}
