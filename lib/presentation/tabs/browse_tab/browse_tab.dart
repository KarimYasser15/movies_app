import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/presentation/screens/movie_details/widgets/category_widget.dart';
import 'package:movies_app/presentation/tabs/browse_tab/widgets/category_image_widget.dart';

import '../../../config/theme/app_styles.dart';

class BrowseTab extends StatelessWidget {
  const BrowseTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40.h, left: 17.w, right: 17.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Browse Category",
              style: AppStyles.tabTitle,
            ),
            SizedBox(
              height: 15.h,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio: 3/2,
                    crossAxisCount: 2,mainAxisSpacing: 10.h,crossAxisSpacing: 0),
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) =>const CategoryImageWidget(),
                itemCount: 4,
              ),
            ),
            // FilmSearchWatchlistWidget(),
          ],
        ),
      ),
    );
  }
}
