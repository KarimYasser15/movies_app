import 'package:flutter/material.dart';
import 'package:movies_app/presentation/screens/home.dart';
import 'package:movies_app/presentation/screens/movie_details/movie_details.dart';
import 'package:movies_app/presentation/screens/splash.dart';

class RoutesManager {
  static const splash = "/splash";
  static const home = "/home";
  static const movieDetails = "/movieDetails";

  static Route? router(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (context) => const SplashScreen(),);
    case home:
        return MaterialPageRoute(builder: (context) => const HomeScreen(),);
        case movieDetails:
        return MaterialPageRoute(builder: (context) => const MovieDetailsScreen(),);
    }
  }
}
