import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mad_tailor/utils/app_assets.dart';

import 'package:mad_tailor/widgets/primary_button.dart';

import '../../../utils/colors.dart';
import '../../../utils/routes.dart';

class SelectionScreen extends StatelessWidget {
  static const id = "/SelectionScreen";
  const SelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppAssets
                    .icSelectionScreenBackground), // Your background image
                fit: BoxFit
                    .cover, // Stretches the image to cover the entire screen
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 78.h),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    AppAssets.icLogo,
                    width: 240.w,
                  ),
                  SizedBox(
                    height: 174.h,
                  ),
                  PrimaryButton(
                      borderSide: BorderSide(
                        color: AppColors.primarybtnColor,
                      ),
                      titleText: 'Sign in',
                      onPressed: () {
                        Get.toNamed(Routes().getSignInPage());
                      },
                      backgroundColor: AppColors.backgroundColor,
                      foregroundColor: AppColors.primarybtnColor,
                      textSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      buttonRadius: 20.r,
                      width: 332.w,
                      height: 49.h),
                  SizedBox(
                    height: 31.h,
                  ),
                  PrimaryButton(
                      borderSide: BorderSide(
                        color: AppColors.primarybtnColor,
                      ),
                      titleText: 'Sign up',
                      onPressed: () {
                        Get.toNamed(Routes().getSignUpPage());
                      },
                      backgroundColor: AppColors.backgroundColor,
                      foregroundColor: AppColors.primarybtnColor,
                      textSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      buttonRadius: 20.r,
                      width: 332.w,
                      height: 49.h)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
