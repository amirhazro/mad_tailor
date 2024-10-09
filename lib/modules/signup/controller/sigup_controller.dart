import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:mad_tailor/utils/colors.dart';
import 'package:mad_tailor/utils/utils.dart';

class SignUpController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  var obscure = true;
  bool isError = false;
  void togglePasswordVisibility() {
    obscure = !obscure; //
    update();
  }
}
