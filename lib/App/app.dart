import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vendora/App/AppRoute.dart';
import 'package:vendora/App/Provider/themeProvider.dart';
import 'package:vendora/App/appTheme.dart';
import 'package:vendora/Feature/Auth/Presentation/Screens/splash_screen.dart';
import 'package:vendora/Feature/Auth/Provider/OtpTimer_provider.dart';

class Vendora extends StatelessWidget {
  const Vendora({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>ThemeProvider()..loadThemeMode()),
        ChangeNotifierProvider(create: (_)=>OtpTimerProvider()..Count(),),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context,controller,_) {
          return MaterialApp(
            title: "vendora",
            debugShowCheckedModeBanner: false,
            initialRoute: SplashScreen.name,
            onGenerateRoute: AppRoute.routeSettings,
            theme:AppTheme.lightTheme,
            darkTheme:AppTheme.darkTheme,
            themeMode:controller.themeMode,
          );
        }
      ),
    );
  }
}
