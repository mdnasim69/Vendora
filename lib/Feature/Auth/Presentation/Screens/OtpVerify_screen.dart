import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';
import 'package:vendora/App/appColor.dart';
import 'package:vendora/Feature/Auth/Presentation/Screens/signUp_screen.dart';
import 'package:vendora/Feature/Auth/Presentation/Widgets/logo.dart';
import 'package:vendora/Feature/Auth/Provider/OtpTimer_provider.dart';

class OtpVerifyScreen extends StatefulWidget {
  static String name = '/OtpVerifyScreen';

  const OtpVerifyScreen({super.key});

  @override
  State<OtpVerifyScreen> createState() => _OtpVerifyScreenState();
}

class _OtpVerifyScreenState extends State<OtpVerifyScreen> {
  final PinInputController _OtpController = PinInputController();
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
                    "Enter Your OTP Code",
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(),
                  ),
                  Text(
                    "A 4 digit code has been sent to your email",
                    style: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.grey),
                  ),
                  SizedBox(height: 8),
                  MaterialPinField(
                    length: 4,
                    pinController: _OtpController,
                    theme: MaterialPinTheme(
                      borderColor:Colors.grey,
                      fillColor:Colors.white,
                      filledFillColor:Colors.white,
                      filledBorderColor:Colors.greenAccent,
                      focusedFillColor:Colors.white,
                      focusedBorderColor: Colors.blue,
                      completeBorderColor:Colors.greenAccent,
                      completeFillColor:Colors.white,
                      shape: MaterialPinShape.outlined,
                      cellSize: Size(55, 50),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {
                      Verify();
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      fixedSize: Size.fromWidth(double.maxFinite),
                      backgroundColor: AppColor.themeColor,
                    ),
                    child: Text("Verify"),
                  ),
                  SizedBox(height: 48),
                  Consumer<OtpTimerProvider>(
                    builder: (context,ctr,_) {
                      return Visibility(
                        visible:ctr.seconds!=0,
                        child: RichText(
                          text: TextSpan(
                            text: "You can resent OTP after ",
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(
                                text: "${ctr.seconds}s",
                                style: TextStyle(color: AppColor.themeColor),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {

                                  },
                              ),
                            ],
                          ),
                        ),
                      );
                    }
                  ),
                  Consumer<OtpTimerProvider>(
                    builder: (context,ctr,_) {
                      return Visibility(
                        visible:ctr.seconds==0,
                        child: TextButton(onPressed: (){
                          ctr.Count();
                        }, child: Text("Resent OTP",style: TextStyle(
                          color: AppColor.themeColor,
                          fontSize: 18,
                        ),)),
                      );
                    }
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void Verify() {
    if (_formKey.currentState!.validate()) {

    }
  }

  @override
  void dispose() {
    _OtpController.dispose();
    super.dispose();
  }
}
