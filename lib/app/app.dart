import 'package:chef_app/core/utils/app_theme.dart';
import 'package:chef_app/core/utils/router/router.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: CustomRouter.router,
      title: 'Chef App',
      theme: getThemeData(),
    );
  }
}
