import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/reusable_components/film_info_widget.dart';
import 'package:movies_app/core/reusable_components/poster_watchlist_widget.dart';
import 'package:movies_app/core/utils/routes_manager.dart';

import '../../../../core/utils/strings_manager.dart';

class PopularWidget extends StatelessWidget {
  const PopularWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context,RoutesManager.movieDetails),
      child: SizedBox(
        height: 300.h,
        child: Stack(
          children: [
            Column(
              children: [
                CachedNetworkImage(
                  imageUrl: StringsManager.imagePath,
                  placeholder: (context, url) =>const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const CircularProgressIndicator(),
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 164.w,top: 14.h),
                  child: FilmInfoWidget(isSmallDetails: false,),
                ),
              ],
            ),
            Positioned(
              top: 90.h,
              left: 21.w,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4.r),
                child: SizedBox(
                  height: 200.h,
                  width: 130.w,
                  child: PosterWatchlistWidget(posterPath: StringsManager.posterPath)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
