import 'package:chef_app/core/bloc/global_cubit/global_cubit.dart';
import 'package:chef_app/feature/auth/presentation/widgets/language_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageChooseButtons extends StatelessWidget {
  const LanguageChooseButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        LanguageButton(
          language: 'English',
          onPressed: () {
            BlocProvider.of<GlobalCubit>(context).isArabic = false;
            BlocProvider.of<GlobalCubit>(context).changeLanguage();
          },
        ),
        LanguageButton(
            language: 'العربية',
            onPressed: () {
              BlocProvider.of<GlobalCubit>(context).isArabic = true;
              BlocProvider.of<GlobalCubit>(context).changeLanguage();
            }),
      ],
    );
  }
}
