import 'package:flutter/material.dart';
import 'package:four20society/constants/routes/app_routes.dart';
import 'package:four20society/constants/routes/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '420Society',
       onGenerateRoute: RoutesGenerator.generateRoute,
        initialRoute:AppRoute.splaceScreen,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
   //   home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
