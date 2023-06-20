import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:four20society/constants/colors/app_colors.dart';
import 'package:four20society/constants/routes/routes_name.dart';
import 'package:four20society/global_widget/bottom_nav.dart';
import 'package:four20society/global_widget/custom_button.dart';
import 'package:four20society/global_widget/input_fields.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  TextEditingController loginIdController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.network("https://wallpapercave.com/wp/wp2490640.jpg",
                fit: BoxFit.cover)
                ),
        Positioned(
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.only(top: 60, left: 45, right: 45),
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(214),
                      topRight: Radius.circular(214))),
              child: Column(
                children: [
                  const Text("Welcome again!",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
                  const SizedBox(height: 30),
                  InputFieldWidget(
                      controller: loginIdController, hintText: 'user Name'),
                  InputFieldWidget(
                    obscureText: true,
                    controller: passwordController,
                    hintText: 'password',
                    sufferIcon: const Icon(Icons.visibility),
                  ),
                   Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {
                          Navigator.pushNamedAndRemoveUntil(
                  context, AppRoute.forgetPassword, (route) => false);
                      },
                      child: const Text(
                        "forgot Your Password?",
                        style: TextStyle(color: AppColors.buttonColor),
                      ),
                    ),
                  ),
                  const SizedBox(height:90),
                  CustomElevatedButton(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePageWithBottomBar()));
                    },
                    title: "LOGIN",
                    color: AppColors.buttonColor,
                  ),
                  const SizedBox(height: 21),
                  RichText(
                      text: TextSpan(
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                          children: <TextSpan>[
                        const TextSpan(
                            text: 'Don’t Have an Account?',
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamedAndRemoveUntil(
                                    context,
                                    AppRoute.registrationScreen,
                                    (route) => false);
                              },
                            text: ' SIGNUP NOW',
                            style: const TextStyle(
                                color: AppColors.app_bottombar_color))
                      ])),
                  const Text("Or Login With"),
                  const SizedBox(height: 10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.facebook_outlined),
                      Icon(Icons.apple),
                    ],
                  )
                ],
              ),
            ))
      ],
    ));
  }
}
