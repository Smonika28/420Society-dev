import 'package:flutter/material.dart';
import 'package:four20society/constants/colors/app_colors.dart';
import 'package:four20society/constants/routes/routes_name.dart';
class SplaceScreen extends StatelessWidget {
  const SplaceScreen({super.key});
  @override
  Widget build(BuildContext context) {
     Future.delayed(const Duration(seconds: 5)).then((val) {
      Navigator.pushNamedAndRemoveUntil(
                  context, AppRoute.intro1Screen, (route) => false);
  });
    return Scaffold(
      body: Center(
        child: RichText(
          text: const TextSpan(
          children: <TextSpan>[
            TextSpan(text: '420Society.world\n', style: TextStyle(color:AppColors.app_bottombar_color,fontSize: 25,fontWeight: FontWeight.bold)),
            TextSpan(text: 'COMPANY TAGLINE HERE', style: TextStyle(fontSize:15,color: Colors.black,letterSpacing: 0.9,))
          ],
          ),
        ),
      )
    );
  }
}


@override
 initState(){
 
 }