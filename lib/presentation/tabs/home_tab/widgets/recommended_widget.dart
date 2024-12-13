import 'package:flutter/material.dart';
import 'package:movies_app/core/reusable_components/detailed_poster_watchlist_widget.dart';

class RecommendedWidget extends StatelessWidget {
  const RecommendedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DetailedPosterWatchlistWidget(categoryName: "Recommended");
  }
}
