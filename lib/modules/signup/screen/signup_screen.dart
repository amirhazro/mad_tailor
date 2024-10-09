import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mad_tailor/modules/signup/controller/sigup_controller.dart';
import 'package:mad_tailor/utils/app_assets.dart';
import 'package:mad_tailor/utils/colors.dart';
import 'package:mad_tailor/utils/routes.dart';
import 'package:mad_tailor/utils/utils.dart';
import 'package:mad_tailor/widgets/input_field.dart';
import 'package:mad_tailor/widgets/primary_button.dart';
import 'package:mad_tailor/widgets/text_widget.dart';

class SignUpScreen extends StatelessWidget {
  final SignUpController controller = Get.find<SignUpController>();
  static const id = "/SignUpScreen";
  SignUpScreen({super.key});

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
                          textEditingController: controller.nameController,
                          hintText: "Name",
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
                          textEditingController: controller.emailController,
                          hintText: "Email or Number",
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
                        textEditingController:
                            controller.confirmPasswordController,
                        hintText: "Confirm Password",
                        isPasswordField: true,
                        textInputType: TextInputType.text,
                        onShowHideIconPressed:
                            controller.togglePasswordVisibility,
                        obsecureText: true,
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      PrimaryButton(
                          titleText: "SIGN UP",
                          onPressed: () {
                            // controller.login();
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
                              text: "Already have account?",
                              color: AppColors.dontHaveAccountTxtColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(Routes().getSignInPage());
                            },
                            child: TextWidget(
                                text: ' SIGN IN',
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
          ],
        ),
      ),
    );
  }
}
