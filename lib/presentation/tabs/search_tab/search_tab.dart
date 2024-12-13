import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/config/theme/app_styles.dart';
import 'package:movies_app/core/utils/colors_manager.dart';

class SearchTab extends StatefulWidget {
  const SearchTab({super.key});

  @override
  State<SearchTab> createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40.w, left: 34.w, right: 34.w),
        child: Column(
          children: [
            TextFormField(
                cursorColor: Colors.white,
                style: AppStyles.filmTitle(fontSize: 14, isPoppinsFont: false),
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  hintText: "Search"
                    )),
          ],
        ),
      ),
    );
  }
}
