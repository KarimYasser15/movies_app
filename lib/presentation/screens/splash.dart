import 'dart:async';

import 'package:flutter/material.dart';
import 'package:movies_app/core/utils/assets_manager.dart';

import '../../core/utils/routes_manager.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 1),
      () => Navigator.pushReplacementNamed(context, RoutesManager.home),
    );
    return Scaffold(
      body: Center(child: Image.asset(AssetsManager.splashLogo)),
    );
  }
}
