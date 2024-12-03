import 'package:chef_app/core/locale/app_locale.dart';
import 'package:chef_app/core/utils/app_strings.dart';
import 'package:chef_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({super.key, this.controller});

  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      hintText: AppStrings.email.tr(context),
      keyboardType: TextInputType.emailAddress,
      controller: controller,
      validator: (data) {
        if (data!.isEmpty || !data.contains('@gmail.com')) {
          return AppStrings.pleaseEnterValidEmail.tr(context);
        }
        return null;
      },
    );
  }
}
