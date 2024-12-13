import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/config/theme/app_styles.dart';
import 'package:movies_app/core/reusable_components/film_search_watchlist_widget.dart';

class WatchlistTab extends StatelessWidget {
  const WatchlistTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:EdgeInsets.only(top : 40.h, left: 17.w),
            child: Text(
              "WatchList",
              style: AppStyles.tabTitle,
            ),
          ),
          const FilmSearchWatchlistWidget(),
        ],
      ),
    );
  }
}
