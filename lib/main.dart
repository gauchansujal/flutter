import 'package:batch_35_classwork/screens/armstring_screen.dart';
import 'package:batch_35_classwork/screens/arthmetic_screen.dart';
import 'package:batch_35_classwork/screens/column_screen.dart';
import 'package:batch_35_classwork/screens/fexiable_expanded_screen.dart';
import 'package:batch_35_classwork/screens/image_view_screen.dart';
import 'package:batch_35_classwork/screens/row_screen.dart';
import 'package:batch_35_classwork/screens/arthamatic2_screen.dart'; // <-- ADD THIS
import 'package:batch_35_classwork/widget/my_widget.dart';
import 'package:flutter/material.dart';
import 'screens/dashboard_screen.dart' hide FluttterLayout;
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
        '/arthmatic2': (context) => const Arthamatic2Screen(),

        '/row': (context) => RowScreen(),
        '/column': (context) => ColumnScreen(),
        '/arithmetic': (context) => ArithmeticScreen(),
        '/simpleInterest': (context) => SimpleInterestScreen(),
        '/areaCircle': (context) => AreaCircleScreen(),
        '/armstrong': (context) => ArmstrongScreen(),
        '/palindrome': (context) => PalindromeScreen(),
        '/flutter': (context) => FluttterLayout(),
        '/fexiable': (context) => FexiableExpandedScreen(),
        '/imageview': (context) => ImageViewScreen(),
        '/mywidget': (_) => const FluttterLayout(),
      },
    );
  }
}
