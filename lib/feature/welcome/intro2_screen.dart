// import 'package:flutter/material.dart';
// import 'package:four20society/constants/colors/app_colors.dart';
// import 'package:four20society/constants/routes/routes_name.dart';
// import 'package:four20society/global_widget/custom_button.dart';

// class IntroTwoScreen extends StatelessWidget {
//   const IntroTwoScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Container(
//               decoration: const BoxDecoration(
//                   image: DecorationImage(
//                       image: AssetImage("assets/images/intro2.png"))),
//               alignment: Alignment.center,
//               child: const Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Text("Don’t Panic, It’s",
//                       style: TextStyle(
//                           fontSize: 25,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black)),
//                   Text("Organic",
//                       style: TextStyle(
//                           fontSize: 25,
//                           fontWeight: FontWeight.bold,
//                           color: AppColors.buttonColor)),
//                   Text("Nationwide Cannabis Delivery,",
//                       style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.w300,
//                           color: AppColors.textWithfadeBlack)),
//                   Text("where available.",
//                       style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.w300,
//                           color: AppColors.textWithfadeBlack))
//                 ],
//               ),
//             ),
//             Expanded(
//               child: Image.network("https://wallpapercave.com/wp/wp2490640.jpg",
//                   fit: BoxFit.cover),
//             ),
//             const SizedBox(height: 10),
//             CustomElevatedButton(
//                 onTap: () {
//                   Navigator.pushNamedAndRemoveUntil(
//                       context, AppRoute.loginScreen, (route) => false);
//                 },
//                 title: "GET STARTED",
//                 width: 240,
//                 color: AppColors.buttonColor),
//             const SizedBox(height: 20),
//           ],
//         ));
//   }
// }
