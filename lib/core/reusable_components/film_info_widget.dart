import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/config/theme/app_styles.dart';

class FilmInfoWidget extends StatelessWidget {
  FilmInfoWidget({super.key, required this.isSmallDetails,this.isHugeDetails = false});
  bool isSmallDetails;
  bool isHugeDetails;

  @override
  Widget build(BuildContext context) {
    int fontSizeTitle;
    int fontSizeDetails;
    bool isPoppins;
    if(isSmallDetails)
      {
        fontSizeTitle = 10;
        fontSizeDetails = 8;
        isPoppins = true;
      }
    else if(isHugeDetails)
      {
        fontSizeTitle = 18;
        fontSizeDetails = 10;
        isPoppins = false;
      }
    else
      {
        fontSizeTitle = 14;
        fontSizeDetails = 10;
        isPoppins = false;
      }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Elevation",
          style: AppStyles.filmTitle(fontSize: fontSizeTitle,isPoppinsFont: isPoppins),
        ),
        Padding(
          padding: EdgeInsets.only(top: isSmallDetails? 2.h : 10.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "2019",
                style: AppStyles.filmInfo(fontSize: fontSizeDetails),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.w, right: 8.w),
                child: Text("R", style: AppStyles.filmInfo(fontSize: fontSizeDetails)),
              ),
              Text("2h 7m",style:  AppStyles.filmInfo(fontSize: fontSizeDetails))
            ],
          ),
        )
      ],
    );
  }
}
