import 'package:chef_app/core/locale/app_locale.dart';
import 'package:chef_app/core/utils/app_strings.dart';
import 'package:chef_app/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SendCodeScreen extends StatelessWidget {
  const SendCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: CustomAppBar(title: AppStrings.forgetPassword.tr(context)),
        body:const Center(child: Text('SendCodeScreen')),
        );
  }
}
