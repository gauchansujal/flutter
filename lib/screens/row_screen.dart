import 'package:flutter/material.dart';

class RowScreen extends StatelessWidget {
  const RowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Row Screen")),
      body: Container(
        color: Colors.grey[200],
        width: double.infinity,
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(width: 50, height: 100, color: Colors.red),
            Container(width: 50, height: 100, color: Colors.green),
            Container(width: 50, height: 100, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
