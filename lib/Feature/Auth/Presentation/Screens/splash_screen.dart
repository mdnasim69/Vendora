import 'package:flutter/material.dart';
import 'package:vendora/Feature/Auth/Presentation/Screens/signIn_screen.dart';
import 'package:vendora/Feature/Auth/Presentation/Widgets/logo.dart';
import 'package:vendora/Feature/Share/Presentation/Screens/Main_Bottom_Nav_Screen.dart';

class SplashScreen extends StatefulWidget {
  static String name = "/splash";

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    MoveToNext();
    super.initState();
  }

  Future<void> MoveToNext() async {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, MainBottomNavScreen.name);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 64.0),
              child: Logo(),
            ),
            Spacer(),
            CircularProgressIndicator(),
            SizedBox(height: 8),
            Text(
              'version: 1.0.1',
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
