import 'package:chef_app/core/locale/app_locale.dart';
import 'package:chef_app/core/utils/app_strings.dart';
import 'package:chef_app/core/widgets/Lock_image.dart';
import 'package:chef_app/core/widgets/custom_elevated_button.dart';
import 'package:chef_app/core/widgets/email_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SendCodeBody extends StatelessWidget {
  const SendCodeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 40.h),
          const LockImage(),
          SizedBox(height: 26.h),
          Text(
            AppStrings.sendResetLinkInfo.tr(context),
            maxLines: 2,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  fontSize: 16.sp,
                ),
          ),
          SizedBox(height: 26.h),
          const EmailTextField(),
          SizedBox(height: 30.h),
          CustomElevatedButton(
            name: AppStrings.sendResetLink.tr(context),
            onPressed: () {},
          ),
        ],
      ),
    ));
  }
}
