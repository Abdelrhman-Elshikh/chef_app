import 'package:chef_app/core/locale/app_locale.dart';
import 'package:chef_app/core/utils/app_strings.dart';
import 'package:chef_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField(
      {super.key,
      required this.hintText,
      required this.controller,
      required this.suffixIcon,
      this.onPressedSuffixIcon,
      required this.isLoginPasswordHiding});

  final bool isLoginPasswordHiding;
  final String hintText;
  final TextEditingController controller;
  final IconData suffixIcon;
  final void Function()? onPressedSuffixIcon;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      hintText: AppStrings.password.tr(context),
      isPassword: isLoginPasswordHiding,
      suffixIcon: IconButton(
        onPressed: onPressedSuffixIcon,
        icon: Icon(suffixIcon),
      ),
      controller: controller,
      validator: (data) {
        if (data!.length < 6 || data.isEmpty) {
          return AppStrings.pleaseEnterValidPassword.tr(context);
        }
        return null;
      },
    );
  }
}
