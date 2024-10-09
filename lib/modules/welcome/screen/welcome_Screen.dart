import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mad_tailor/utils/app_assets.dart';

import 'package:mad_tailor/utils/colors.dart';
import 'package:mad_tailor/widgets/text_widget.dart';

import '../../../utils/routes.dart';

class WelcomeScreen extends StatelessWidget {
  static const id = "/WelcomeScreen";
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppAssets.icWelcomeLogo,
              ), // Your background image
              fit: BoxFit
                  .cover, // Stretches the image to cover the entire screen
            ),
          ),
        ),
        Center(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 78.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  AppAssets.icLogo,
                  width: 240.w,
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes().getSelectionPage());
                  },
                  child: Container(
                    width: 328.w,
                    height: 49.h,
                    decoration: BoxDecoration(
                      color: AppColors.primarybtnColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.r),
                      ),
                      border: Border.all(
                        color: AppColors
                            .backgroundColor, // Replace with your desired border color
                        width: 1.0, // Border width
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextWidget(
                            text: "Let's Explore",
                            color: AppColors.backgroundColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 24.sp),
                        Padding(
                          padding: EdgeInsets.only(top: 8.h, left: 5.w),
                          child: Icon(
                            Icons.arrow_forward,
                            size: 20.sp,
                            color: AppColors.backgroundColor,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
