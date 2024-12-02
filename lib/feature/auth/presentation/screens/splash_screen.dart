import 'package:chef_app/core/utils/app_colors.dart';
import 'package:chef_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.KPrimaryColor,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(Assets.imagesLogo),
          SizedBox(height: 16),
          Text(
            'Chef App',
            style: Theme.of(context).textTheme.displayLarge,
          )
        ],
      )),
    );
  }
}
