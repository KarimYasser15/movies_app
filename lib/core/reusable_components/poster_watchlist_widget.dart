import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movies_app/core/utils/assets_manager.dart';

class PosterWatchlistWidget extends StatefulWidget {
  PosterWatchlistWidget({super.key, required this.posterPath});

  String posterPath;

  @override
  State<PosterWatchlistWidget> createState() => _PosterWatchlistWidgetState();
}

class _PosterWatchlistWidgetState extends State<PosterWatchlistWidget> {
  bool isFavorite = false;
  String favouriteIcon = AssetsManager.unBookmarkedIcon;

  @override
  Widget build(BuildContext context) {
    return Stack(fit: StackFit.passthrough, children: [
      CachedNetworkImage(
        fit: BoxFit.cover,
        imageUrl: widget.posterPath,
        placeholder: (context, url) =>
            const Center(child: CircularProgressIndicator()),
        errorWidget: (context, url, error) =>
            const Center(child: CircularProgressIndicator()),
      ),
      Positioned(
        top: 0,
        child: InkWell(
          onTap: () {
            if(isFavorite)
              {
                isFavorite = false;
                favouriteIcon = AssetsManager.unBookmarkedIcon;
              }
            else
              {
                isFavorite = true;
                favouriteIcon  = AssetsManager.bookmarkIcon;
              }
            setState(() {
            });
          },
          child: SvgPicture.asset(
            favouriteIcon,
            height: 36.h,
            width: 27.w,
          ),
        ),
      ),
    ]);
  }
}
