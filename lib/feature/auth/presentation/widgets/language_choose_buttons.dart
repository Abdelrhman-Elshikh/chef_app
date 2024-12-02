import 'package:chef_app/feature/auth/presentation/widgets/language_button.dart';
import 'package:flutter/material.dart';

class LanguageChooseButtons extends StatelessWidget {
  const LanguageChooseButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        LanguageButton(language: 'English'),
        LanguageButton(language: 'العربية'),
      ],
    );
  }
}
