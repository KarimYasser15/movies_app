import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/utils/routes_manager.dart';
import 'package:movies_app/presentation/screens/splash.dart';

import '../config/theme/my_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      designSize: const Size(412, 870),
      builder: (context, child) {
        return  MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Movies",
          initialRoute: RoutesManager.splash,
          onGenerateRoute: RoutesManager.router,
          theme: MyTheme.lightTheme ,
        );
      },
    );
  }
}
