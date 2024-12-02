import 'package:chef_app/core/utils/app_theme.dart';
import 'package:chef_app/core/utils/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => MaterialApp.router(
        routerConfig: CustomRouter.router,
        title: 'Chef App',
        theme: getThemeData(),
      ),
    );
  }
}
