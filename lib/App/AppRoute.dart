import 'package:flutter/material.dart';
import 'package:vendora/Feature/Auth/Presentation/Screens/OtpVerify_screen.dart';
import 'package:vendora/Feature/Auth/Presentation/Screens/signIn_screen.dart';
import 'package:vendora/Feature/Auth/Presentation/Screens/signUp_screen.dart';
import 'package:vendora/Feature/Auth/Presentation/Screens/splash_screen.dart';

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
    }else{
      widget=SizedBox();
    }
    return MaterialPageRoute(builder: (_) => widget);
  }
}