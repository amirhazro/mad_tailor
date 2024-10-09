import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:mad_tailor/utils/colors.dart';
import 'package:mad_tailor/utils/utils.dart';

class SignInController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RxBool obscure = true.obs;
  bool isError = false;
  void togglePasswordVisibility() {
    obscure.value = !obscure.value; //
  }

  void login() {
    if (Utils.isValidEmail(emailController.text) &&
        passwordController.text.isNotEmpty) {
      //do login
      print('login successful');
      emailController.clear();
      passwordController.clear();
    } else {
      Get.snackbar(
        'Error',
        'Invalid Email or Password!',
        colorText: AppColors.primarybtnColor,
        backgroundColor: AppColors.backgroundColor,
      );
    }
  }
}
