import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:four20society/constants/colors/app_colors.dart';
import 'package:four20society/constants/routes/routes_name.dart';
import 'package:four20society/global_widget/custom_button.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class VerifyOtpScreen extends StatelessWidget {
  final String email;
  const VerifyOtpScreen({super.key, required this.email});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.network("https://wallpapercave.com/wp/wp2490640.jpg",
                fit: BoxFit.cover)),
        Positioned(
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.only(
                  top: 60, left: 45, right: 45, bottom: 20),
              height: MediaQuery.of(context).size.height * 0.65,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(214),
                      topRight: Radius.circular(214))),
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        const Text("Verify Your ",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w700)),
                        const Text("Account",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                color: AppColors.buttonColor)),
                        const SizedBox(height: 30),
                        const Text("Please enter your verification code",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              "Please enter 5 digit code sent to your email address ${email[0] + email[1]}****@gmail.com",
                              textAlign: TextAlign.center),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: OTPTextField(
                            length: 5,
                            width: MediaQuery.of(context).size.width,
                            fieldWidth: 40,
                            style: const TextStyle(fontSize: 17),
                            textFieldAlignment: MainAxisAlignment.spaceAround,
                            fieldStyle: FieldStyle.underline,
                            onCompleted: (pin) {
                              print("Completed: " + pin);
                            },
                          ),
                        ),
                      const  SizedBox(height: 20),
                        const Text(
                          "enter your code (00:30)",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                        RichText(
                            text: const TextSpan(
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                                children: <TextSpan>[
                              TextSpan(
                                  text: 'not received ? ',
                                  style: TextStyle(color: Colors.black)),
                              TextSpan(
                                  text: 'RESEND',
                                  style: TextStyle(
                                      color: AppColors.app_bottombar_color))
                            ])),
                      ],
                    ),
                  ),
                  CustomElevatedButton(
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(context,
                          AppRoute.homePageWithBottomBar, (route) => false);
                    },
                    title: "VERIFY",
                    color: AppColors.buttonColor,
                  ),
                  const SizedBox(height: 10),
                  RichText(
                      text: TextSpan(
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                          children: <TextSpan>[
                        const TextSpan(
                            text: 'Back to ',
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamedAndRemoveUntil(context,
                                    AppRoute.loginScreen, (route) => false);
                              },
                            text: 'LOGIN',
                            style: const TextStyle(
                                color: AppColors.app_bottombar_color))
                      ])),
                ],
              ),
            ))
      ],
    ));
  }
}
