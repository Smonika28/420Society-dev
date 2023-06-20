import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:four20society/constants/colors/app_colors.dart';
import 'package:four20society/constants/routes/routes_name.dart';
import 'package:four20society/feature/auth/forget_password/presentation/verify_otp_screen.dart';
import 'package:four20society/global_widget/custom_button.dart';
import 'package:four20society/global_widget/input_fields.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  TextEditingController emailController = TextEditingController();
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
                        const Text("Forgot Your",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w700)),
                        const Text("Password",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                color: AppColors.buttonColor)),
                        const SizedBox(height: 30),
                        const Text("let’s get you a new one",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                              "Please enter your email address. You will receive an OTP to create a new password via e-mail.",
                              textAlign: TextAlign.center),
                        ),
                        InputFieldWidget(
                            controller: emailController, hintText: 'Email Id'),
                      ],
                    ),
                  ),
                  CustomElevatedButton(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => VerifyOtpScreen(
                                  email: emailController.text.toString())));
                    },
                    title: "SEND OTP",
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
