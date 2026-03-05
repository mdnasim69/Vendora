import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:vendora/App/appColor.dart';
import 'package:vendora/Feature/Auth/Presentation/Screens/signIn_screen.dart';
import 'package:vendora/Feature/Auth/Presentation/Widgets/logo.dart';

class SignUpScreen extends StatefulWidget {
  static String name = '/signUpScreen';

  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
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
                    "Create an account",
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(),
                  ),
                  Text(
                    "Get start with your details",
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
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    validator: (String? v) {
                      if (v == null || v.isEmpty) {
                        return "First Name is required";
                      }
                      return null;
                    },
                    controller: _firstNameController,
                    decoration: InputDecoration(hintText: "First Name"),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    validator: (String? v) {
                      if (v == null || v.isEmpty) {
                        return "Last Name is required";
                      }
                      return null;
                    },
                    controller: _lastNameController,
                    decoration: InputDecoration(hintText: "Last Name"),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    keyboardType: TextInputType.phone,
                    textInputAction: TextInputAction.next,
                    validator: (String? v) {
                      if (v == null || v.isEmpty) {
                        return "Phone is required";
                      }
                      return null;
                    },
                    controller: _phoneController,
                    decoration: InputDecoration(hintText: "Phone"),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    validator: (String? v) {
                      if (v == null || v.isEmpty) {
                        return "City is required";
                      }
                      return null;
                    },
                    controller: _cityController,
                    decoration: InputDecoration(hintText: "City"),
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
                      SignUp();
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      fixedSize: Size.fromWidth(double.maxFinite),
                      backgroundColor: AppColor.themeColor,
                    ),
                    child: Text("SignUp"),
                  ),
                  SizedBox(height: 48),
                  RichText(
                    text: TextSpan(
                      text: "Already have an account !",
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: " Sign In",
                          style: TextStyle(color: AppColor.themeColor),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(context, SignInScreen.name);
                            },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void SignUp() {
    if (_formKey.currentState!.validate()) {}
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _emailController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }
}
