import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Utils {
  static void dismissKeyboard(BuildContext context) {
    FocusScope.of(context).unfocus();
  }

  static bool isValidEmail(String? value) => RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(value ?? '');
}
