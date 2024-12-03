// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:chef_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.keyboardType,
    this.controller,
    this.validator,
    this.isPassword = false,
    this.suffixIcon,
  });

  final String hintText;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool isPassword;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Theme.of(context).textTheme.displayLarge!.copyWith(
            fontSize: 16.sp,
          ),
      decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: suffixIcon,
          hintStyle: Theme.of(context).textTheme.displayLarge!.copyWith(
                fontSize: 16.sp,
                color: AppColors.KGreyColor,
              )),
      keyboardType: keyboardType,
      controller: controller,
      validator: validator,
      obscureText: isPassword,
    );
  }
}
