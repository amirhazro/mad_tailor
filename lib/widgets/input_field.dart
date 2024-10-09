import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mad_tailor/modules/signup/controller/sigup_controller.dart';
import 'package:mad_tailor/utils/app_assets.dart';
import 'package:mad_tailor/utils/colors.dart';

import '../modules/signin/controller/sigin_controller.dart';

class CustomInputField extends StatelessWidget {
  final SignUpController signUpController = Get.find<SignUpController>();
  final SignInController signInController = Get.find<SignInController>();
  final TextEditingController textEditingController;
  final String hintText;
  final bool isPasswordField;
  final bool? obsecureText;
  final VoidCallback? onShowHideIconPressed;
  final TextInputType textInputType;
  final BoxDecoration? decoration;
  final bool? autoFocus;
  final FocusNode? focusNode;
  final int? maxLines;
  final int? minLines;
  final bool isEnable;
  final bool? isSignInFlow;

  CustomInputField({
    super.key,
    required this.textEditingController,
    required this.hintText,
    required this.isPasswordField,
    this.obsecureText,
    this.onShowHideIconPressed,
    required this.textInputType,
    this.decoration,
    this.autoFocus,
    this.focusNode,
    this.maxLines,
    this.minLines,
    this.isEnable = true,
    this.isSignInFlow = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 6.h,
            ),
            decoration: decoration ??
                BoxDecoration(
                  color: AppColors.primarybtnColor,
                  borderRadius: BorderRadius.circular(30.r),
                ),
            child: GetBuilder<SignUpController>(
              builder: (signUpController) {
                return GetBuilder<SignInController>(
                    builder: (signInController) {
                  return Row(
                    children: [
                      Expanded(
                        child: TextField(
                          enabled: isEnable,
                          controller: textEditingController,
                          keyboardType: textInputType,
                          focusNode: focusNode,
                          maxLines: maxLines ?? 1,
                          minLines: minLines,
                          style: GoogleFonts.aBeeZee(
                            color: AppColors.dontHaveAccountTxtColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                          ),
                          obscureText: isPasswordField
                              ? isSignInFlow!
                                  ? signInController.obscure
                                  : signUpController.obscure
                              : false,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: hintText,
                            isDense: true,
                            hintStyle: GoogleFonts.aBeeZee(
                                color: AppColors.inputFieldTxtColor,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400),
                          ),
                          autofocus: autoFocus ?? false,
                        ),
                      ),
                      if (isPasswordField)
                        GestureDetector(
                          onTap: onShowHideIconPressed,
                          child: Image.asset(
                            AppAssets.icShowHidePassword,
                            width: 27.5.w,
                            height: 27.5.h,
                          ),
                        )
                    ],
                  );
                });
              },
            )),
      ],
    );
  }
}
