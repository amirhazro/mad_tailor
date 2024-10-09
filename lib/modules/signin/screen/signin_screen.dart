import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mad_tailor/modules/signin/controller/sigin_controller.dart';
import 'package:mad_tailor/utils/app_assets.dart';
import 'package:mad_tailor/utils/routes.dart';
import 'package:mad_tailor/utils/utils.dart';
import 'package:mad_tailor/widgets/back_button.dart';
import 'package:mad_tailor/widgets/input_field.dart';
import 'package:mad_tailor/widgets/primary_button.dart';
import 'package:mad_tailor/widgets/text_widget.dart';

import '../../../utils/colors.dart';

class SignInScreen extends StatelessWidget {
  final SignInController controller = Get.find<SignInController>();
  static const id = "/SignInScreen";
  SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Utils.dismissKeyboard(context);
        },
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: Container(
                width: 375.w,
                height: 321.h,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          AppAssets.icBgSigninSignup), // Your background image
                      fit: BoxFit.fitWidth
                      // Stretches the image to cover the entire screen
                      ),
                ),
              ),
            ),
            Positioned(
              top: 87.h,
              left: 69.w,
              child: Image.asset(
                AppAssets.icLogo,
                width: 240.w,
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 300.h,
              child: Container(
                padding: EdgeInsets.only(top: 40.h, left: 30.w, right: 30.w),
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(28.r),
                    topRight: Radius.circular(28.r),
                  ),
                  color: AppColors.backgroundColor,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomInputField(
                          controller: controller,
                          decoration: BoxDecoration(
                            color: AppColors.InputFieldBgColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(30.r),
                            ),
                          ),
                          textEditingController: controller.emailController,
                          hintText: "Email",
                          isPasswordField: false,
                          textInputType: TextInputType.emailAddress),
                      SizedBox(
                        height: 20.h,
                      ),
                      CustomInputField(
                        controller: controller,
                        decoration: BoxDecoration(
                          color: AppColors.InputFieldBgColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(30.r),
                          ),
                        ),
                        textEditingController: controller.passwordController,
                        hintText: "Password",
                        isPasswordField: true,
                        textInputType: TextInputType.text,
                        onShowHideIconPressed:
                            controller.togglePasswordVisibility,
                        obsecureText: true,
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: TextWidget(
                            text: "FORGOT PASSWORD",
                            color: AppColors.primarybtnColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      PrimaryButton(
                          titleText: "LOG IN",
                          onPressed: () {
                            controller.login();
                          },
                          backgroundColor: AppColors.primarybtnColor,
                          foregroundColor: AppColors.backgroundColor,
                          textSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          buttonRadius: 30.r,
                          width: 315.w,
                          height: 52.h),
                      SizedBox(
                        height: 40.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextWidget(
                              text: "Don't have account?",
                              color: AppColors.dontHaveAccountTxtColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(Routes().getSignUpPage());
                            },
                            child: TextWidget(
                                text: ' SIGN UP',
                                color: AppColors.primarybtnColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
                top: 55,
                left: 25,
                child: TopBarBackButton(
                    iconPath: AppAssets.icBackArrow,
                    onPressed: () {
                      Get.back();
                    }))
          ],
        ),
      ),
    );
  }
}
