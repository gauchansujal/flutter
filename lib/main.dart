import 'package:batch_35_classwork/screens/armstring_screen.dart';
import 'package:batch_35_classwork/screens/arthmetic_screen.dart';

import 'package:flutter/material.dart';
import 'screens/dashboard_screen.dart';

import 'screens/simple_interest_screen.dart';
import 'screens/area_circle_screen.dart';

import 'screens/palindrome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Batch 35 Classwork',
      home: DashboardScreen(),
      routes: {
        '/arithmetic': (context) => ArithmeticScreen(),
        '/simpleInterest': (context) => SimpleInterestScreen(),
        '/areaCircle': (context) => AreaCircleScreen(),
        '/armstrong': (context) => ArmstrongScreen(),
        '/palindrome': (context) => PalindromeScreen(),
        '/flutter': (context) => FluttterLayout(),
      },
    );
  }

  fluttterLayout() {}
}
