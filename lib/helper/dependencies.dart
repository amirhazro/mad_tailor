import 'package:get/get.dart';
import 'package:mad_tailor/modules/signin/controller/sigin_controller.dart';
import 'package:mad_tailor/modules/signup/controller/sigup_controller.dart';

class GlobalDependencies extends Bindings {
  @override
  Future<void> dependencies() async {
    Get.lazyPut<SignInController>(
      () => SignInController(),
      fenix: true,
    );
    Get.lazyPut<SignUpController>(
      () => SignUpController(),
      fenix: true,
    );
  }
}
