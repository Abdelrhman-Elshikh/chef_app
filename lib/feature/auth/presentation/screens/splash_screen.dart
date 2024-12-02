import 'package:chef_app/core/utils/app_colors.dart';
import 'package:chef_app/core/utils/app_images.dart';
import 'package:chef_app/core/utils/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    navigateHomeAfterThreeSeconds();
    super.initState();
  }

  void navigateHomeAfterThreeSeconds() {
    Future.delayed(const Duration(seconds: 3)).then((_) {
      context.go(Routes.KChangeLanguage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.KPrimaryColor,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AppAssets.imagesLogo,
            fit: BoxFit.fill,
            height: 120.h,
          ),
          SizedBox(height: 16.h),
          Text(
            'Chef App',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColors.KBlackColor),
          )
        ],
      )),
    );
  }
}
