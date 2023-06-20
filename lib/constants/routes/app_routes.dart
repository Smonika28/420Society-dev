
import 'package:flutter/material.dart';
import 'package:four20society/feature/auth/forget_password/presentation/forget_password_screen.dart';
import 'package:four20society/feature/auth/login/presentaion/login_screen.dart';
import 'package:four20society/feature/auth/registration/presentaion/registration_screen.dart';
import 'package:four20society/feature/welcome/intro1_screen.dart';
import 'package:four20society/feature/welcome/intro2_screen.dart';
import 'package:four20society/feature/welcome/splace_screen.dart';
import 'package:four20society/global_widget/bottom_nav.dart';
class RoutesGenerator{
static Route<dynamic> generateRoute(RouteSettings routeSettings){
  switch(routeSettings.name){
    case '/':
      return MaterialPageRoute(builder: (_) => const SplaceScreen());
    case '/login':
      return MaterialPageRoute(builder: (_) =>  const LoginScreen());
    case '/registration':
      return MaterialPageRoute(builder: (_) => const RegistrationScreen());
       case '/homePageWithBottomBar':
      return MaterialPageRoute(builder: (_) => const HomePageWithBottomBar());
    case '/intro1Screen':
      return MaterialPageRoute(builder: (_)=>const IntroOneScreen());
    // case '/intro2Screen':
    //  return MaterialPageRoute(builder: (_)=> const IntroTwoScreen());
     case '/forgetPassword' : 
      return MaterialPageRoute(builder: (_)=>  ForgetPasswordScreen());
    default:
      return MaterialPageRoute(builder: (_) => Scaffold(
        body: Center(

          child: Text('No route defined for ${routeSettings.name}'),

        ),

      ));

  }
}

}