import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:four20society/constants/colors/app_colors.dart';
import 'package:four20society/constants/routes/routes_name.dart';
import 'package:four20society/global_widget/custom_button.dart';
import 'package:four20society/global_widget/input_fields.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});
  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cnfPassController = TextEditingController();

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
              padding: const EdgeInsets.only(top:50, left: 45, right: 45),
              height: MediaQuery.of(context).size.height * 0.85,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(214),
                      topRight: Radius.circular(214))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    RichText(
                      text: TextSpan(
                        text:'Register' ,
                          style: const TextStyle(
                              fontSize:25, fontWeight: FontWeight.w400,color:AppColors.app_bottombar_color),
                          children: <TextSpan>[
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamedAndRemoveUntil(context,
                                    AppRoute.loginScreen, (route) => false);
                              },
                            text: ' to',
                            style:
                               const TextStyle(color:Colors.black ))
                      ])),
                  const Text("Explore Exciting",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
                           const Text("Things",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
                  const SizedBox(height:15),
                  InputFieldWidget(
                      controller: fullNameController, hintText: 'full Name'),
                  InputFieldWidget(
                      controller: emailController, hintText: 'Email Id'),
                  InputFieldWidget(
                      controller: phoneController, hintText: 'Phone Number'),
                  InputFieldWidget(
                   obscureText: true,
                      controller: passwordController, hintText: 'Password',sufferIcon: const Icon(Icons.visibility),),
                  InputFieldWidget(
                    obscureText: true,
                      controller: cnfPassController, hintText: 're-password',sufferIcon: const Icon(Icons.visibility),),
                  const SizedBox(height:60),
                  CustomElevatedButton(
                    onTap: () {},
                    title: "Registration",
                    color: AppColors.buttonColor,
                  ),
                  const SizedBox(height: 15),
                  RichText(
                      text: TextSpan(
                        text:'Already have an account?' ,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400,color: Colors.black),
                          children: <TextSpan>[
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamedAndRemoveUntil(context,
                                    AppRoute.loginScreen, (route) => false);
                              },
                            text: ' LOGIN NOW',
                            style:
                               const TextStyle(color: AppColors.app_bottombar_color))
                      ])),

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
