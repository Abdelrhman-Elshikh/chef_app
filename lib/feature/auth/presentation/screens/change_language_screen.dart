import 'package:chef_app/core/locale/app_locale.dart';
import 'package:chef_app/core/utils/app_images.dart';
import 'package:chef_app/core/utils/app_strings.dart';
import 'package:chef_app/feature/auth/presentation/widgets/language_choose_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangeLanguageScreen extends StatelessWidget {
  const ChangeLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AppAssets.imagesChangeLanguageBg))),
          child: Column(
            children: [
              SizedBox(height: 116.h),
              Image.asset(
                AppAssets.imagesLogo,
                fit: BoxFit.fill,
                height: 120.h,
              ),
              SizedBox(height: 16.h),
              Text(
                AppStrings.welcomeToChefApp.tr(context),
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontSize: 32.sp),
              ),
              SizedBox(height: 54.h),
              Text(
                AppStrings.pleaseChooseYourLanguage.tr(context),
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(fontSize: 24.sp),
              ),
              SizedBox(height: 120.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: const LanguageChooseButtons(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
