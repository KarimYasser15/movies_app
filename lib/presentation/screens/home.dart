import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/reusable_components/bottom_navigation_bar_item.dart';
import 'package:movies_app/core/utils/assets_manager.dart';
import 'package:movies_app/presentation/tabs/browse_tab/browse_tab.dart';
import 'package:movies_app/presentation/tabs/home_tab/home.dart';
import 'package:movies_app/presentation/tabs/watchlist_tab/watchlist_tab.dart';

import '../tabs/search_tab/search_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List tabs = [
    const HomeTab(),
    const SearchTab(),
    const BrowseTab(),
    const WatchlistTab()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: SizedBox(
          height: 70.h,
          child: bottomNavigationBar(),
        ),
        body: tabs[selectedIndex],
      ),
    );
  }

  Widget bottomNavigationBar() => BottomNavigationBar(
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          currentIndex: selectedIndex,
          items: [
            CustomBottomNavigationBarItem.build(
                label: "HOME", iconPath: AssetsManager.homeIcon),
            CustomBottomNavigationBarItem.build(
                label: "SEARCH", iconPath: AssetsManager.searchIcon),
            CustomBottomNavigationBarItem.build(
                label: "BROWSE", iconPath: AssetsManager.browseIcon),
            CustomBottomNavigationBarItem.build(
                label: "WATCHLIST", iconPath: AssetsManager.watchlistIcon),
          ]);
}
