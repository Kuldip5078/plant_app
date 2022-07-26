import 'package:flutter/material.dart';

import 'package:plant_application/utils/app_config.dart';

import 'auth/onboarding_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: AppConfig.appPrimaryColor),
      //home: const BottomNaviDrawer(),
     // home: const HomeScreen1(),
     //home: const MyWidget(),
     home : const OnboardingScreen(),
    );
  }
}
