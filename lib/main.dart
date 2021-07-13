import 'package:flutter/material.dart';

import 'OnboardingScreen/OnboardingScreen.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Healthy food',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kprimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
      ),
      home: OnboardingScreen(),
    );
  }
}
