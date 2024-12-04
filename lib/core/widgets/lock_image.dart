import 'package:chef_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LockImage extends StatelessWidget {
  const LockImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      width: 300.w,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.imagesLock),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
