import 'package:flutter/material.dart';

// Your function – only syntax fixed, nothing else changed
void showMySnckBar({
  required BuildContext context,
  required String message,
  Color? color,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message), // fixed: Tab → Text
      backgroundColor:
          color ?? Colors.green, // fixed: Backgoundcolor → backgroundColor
      duration: const Duration(
        seconds: 1,
      ), // fixed: duratin → Duration, second → seconds
      behavior:
          SnackBarBehavior.floating, // fixed: added comma + correct spelling
    ),
  );
}
