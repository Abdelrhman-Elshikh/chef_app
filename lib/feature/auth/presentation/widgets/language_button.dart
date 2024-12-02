import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({super.key, required this.language, this.onPressed});

  final void Function()? onPressed;
  final String language;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
          backgroundColor: const WidgetStatePropertyAll(Colors.black),
          fixedSize: WidgetStatePropertyAll(Size(140.w, 48.h))),
      child: Text(
        language,
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 24.h,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
