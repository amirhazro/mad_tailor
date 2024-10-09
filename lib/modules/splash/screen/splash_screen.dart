import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mad_tailor/utils/app_assets.dart';
import 'package:mad_tailor/utils/colors.dart';
import 'package:mad_tailor/utils/routes.dart';

class SplashScreen extends StatefulWidget {
  static const id = "/SplashScreen";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  Future<void> moveNextScreen() async {
    Timer(const Duration(seconds: 3),
        () => Get.offAllNamed(Routes().getWelcomePage()));
  }

  @override
  initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..forward();
    animation = CurvedAnimation(parent: controller, curve: Curves.linear);
    moveNextScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ScaleTransition(
              alignment: Alignment.center,
              scale: animation,
              child: Image.asset(
                AppAssets.icLogo,
                width: 240.w,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
