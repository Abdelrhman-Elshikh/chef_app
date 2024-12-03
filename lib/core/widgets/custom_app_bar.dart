import 'package:chef_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () => context.pop(),
        icon: const Icon(
          FontAwesomeIcons.arrowLeftLong,
          color: AppColors.KWhiteColor,
        ),
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.displayLarge!.copyWith(
              fontSize: 14.sp,
              color: AppColors.KWhiteColor,
            ),
      ),
      backgroundColor: AppColors.KPrimaryColor,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
