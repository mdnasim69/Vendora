import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:vendora/App/appColor.dart';
import 'package:vendora/Feature/Auth/Presentation/Screens/OtpVerify_screen.dart';
import 'package:vendora/Feature/Auth/Presentation/Screens/signUp_screen.dart';
import 'package:vendora/Feature/Auth/Presentation/Widgets/logo.dart';

class SignInScreen extends StatefulWidget {
  static String name = '/signInScreen';

  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Logo(width: 140, height: 100),
                  SizedBox(height: 8),
                  Text(
                    "Get Started",
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(),
                  ),
                  Text(
                    "Login your account",
                    style: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.grey),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    validator: (String? v) {
                      if (v == null || v.isEmpty) {
                        return "Email is required";
                      }
                      return null;
                    },
                    controller: _emailController,
                    decoration: InputDecoration(hintText: "Email"),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    textInputAction: TextInputAction.done,
                    validator: (String? v) {
                      if (v == null || v.isEmpty) {
                        return "Password is required";
                      } else if (_passwordController.value.text.length < 6) {
                        return "Password must be at leat 6 characters";
                      }
                      return null;
                    },
                    obscureText: true,
                    obscuringCharacter: "*",
                    enableSuggestions: false,
                    autocorrect: false,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    keyboardType: TextInputType.visiblePassword,
                    style: TextStyle(color: Colors.black),
                    controller: _passwordController,
                    decoration: InputDecoration(hintText: "Password"),
                  ),
                  SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {
                      SignIn();
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      fixedSize: Size.fromWidth(double.maxFinite),
                      backgroundColor: AppColor.themeColor,
                    ),
                    child: Text("SignIn"),
                  ),
                  SizedBox(height: 48),
                  RichText(
                    text: TextSpan(
                      text: "Don't have an account !",
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: " Sign Up",
                          style: TextStyle(color: AppColor.themeColor),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                               Navigator.pushNamed(context, SignUpScreen.name);
                            },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "forget password",
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void SignIn() {
    // if (_formKey.currentState!.validate()) {
    //
    // }
    Navigator.pushNamed(context, OtpVerifyScreen.name);
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _emailController.dispose();
    super.dispose();
  }
}
