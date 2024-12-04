import 'package:chef_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key, this.onPressed, required this.name});

  final void Function()? onPressed;
  final String name;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: Theme.of(context).elevatedButtonTheme.style,
      onPressed: onPressed,
      child: Text(name,
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
              fontFamily: 'Poppins',
              fontSize: 24.h,
              color: AppColors.KWhiteColor)),
    );
  }
}
