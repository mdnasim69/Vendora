import 'package:flutter/material.dart';
import 'package:vendora/Feature/Auth/Presentation/Screens/OtpVerify_screen.dart';
import 'package:vendora/Feature/Auth/Presentation/Screens/signIn_screen.dart';
import 'package:vendora/Feature/Auth/Presentation/Screens/signUp_screen.dart';
import 'package:vendora/Feature/Auth/Presentation/Screens/splash_screen.dart';
import 'package:vendora/Feature/Share/Presentation/Screens/Main_Bottom_Nav_Screen.dart';
class AppRoute {
  static Route<dynamic> routeSettings(RouteSettings setting) {
    late Widget widget;
    if (setting.name == SplashScreen.name) {
      widget = SplashScreen();
    }else if (setting.name == SignInScreen.name) {
      widget = SignInScreen();
    }else if (setting.name == SignUpScreen.name) {
      widget = SignUpScreen();
    }else if (setting.name == OtpVerifyScreen.name) {
      widget = OtpVerifyScreen();
    }else if (setting.name == MainBottomNavScreen.name) {
      widget = MainBottomNavScreen();
    }else{
      widget=SizedBox();
    }
    return MaterialPageRoute(builder: (_) => widget);
  }
}