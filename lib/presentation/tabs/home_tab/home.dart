import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/presentation/tabs/home_tab/widgets/new_releases_widget.dart';
import 'package:movies_app/presentation/tabs/home_tab/widgets/popular_widget.dart';
import 'package:movies_app/presentation/tabs/home_tab/widgets/recommended_widget.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:[
          const PopularWidget(),
          const NewReleasesWidget(),
          SizedBox(
            height: 30.h,
          ),
          const RecommendedWidget()
        ],
    );
  }
}
