import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:mad_tailor/modules/signin/screen/signin_screen.dart';
import 'package:mad_tailor/modules/signup/screen/signup_screen.dart';
import 'package:mad_tailor/modules/splash/screen/splash_screen.dart';
import 'package:mad_tailor/modules/welcome/screen/selection_screen.dart';
import 'package:mad_tailor/modules/welcome/screen/welcome_Screen.dart';

class Routes {
  static final Routes _sharedInstance = Routes._internal();

  factory Routes() {
    return _sharedInstance;
  }
  Routes._internal();

  // Routes
  String getSplashPage() => SplashScreen.id;
  String getWelcomePage() => WelcomeScreen.id;
  String getSelectionPage() => SelectionScreen.id;
  String getSignInPage() => SignInScreen.id;
  String getSignUpPage() => SignUpScreen.id;
  List<GetPage> routeMap = [
    GetPage(
      name: SplashScreen.id,
      page: () => SplashScreen(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: WelcomeScreen.id,
      page: () => WelcomeScreen(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: SelectionScreen.id,
      page: () => SelectionScreen(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: SignInScreen.id,
      page: () => SignInScreen(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: SignUpScreen.id,
      page: () => SignUpScreen(),
      transition: Transition.noTransition,
    ),
  ];
}
