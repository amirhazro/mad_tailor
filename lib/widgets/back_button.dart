import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mad_tailor/utils/app_assets.dart';
import 'package:mad_tailor/utils/colors.dart';

class TopBarBackButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String? iconPath;
  final double? width;
  final double? height;
  final double? iconWidth;
  final double? iconHeight;
  final Color? backgroundColor;

  const TopBarBackButton(
      {super.key,
      required this.onPressed,
      this.iconPath,
      this.height,
      this.width,
      this.iconWidth,
      this.iconHeight,
      this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width ?? 32.w,
        height: height ?? 32.h,
        alignment: Alignment.center,
        padding: EdgeInsets.all(
          8.sp,
        ),
        decoration: BoxDecoration(
          color: backgroundColor ?? AppColors.primarybtnColor,
          borderRadius: BorderRadius.circular(6.sp),
        ),
        child: Image.asset(
          AppAssets.icBackArrow,
          width: iconWidth ?? 16.w,
          height: iconHeight ?? 14.h,
        ),
      ),
    );
  }
}
