// lib/widget/my_widget.dart
import 'package:flutter/material.dart';

class FluttterLayout extends StatefulWidget {
  const FluttterLayout({super.key});

  @override
  State<FluttterLayout> createState() => _FluttterLayoutState();
}

class _FluttterLayoutState extends State<FluttterLayout> {
  final firstController = TextEditingController();
  final secondController = TextEditingController();
  String result = '';

  void calculate() {
    final num1 = double.tryParse(firstController.text) ?? 0;
    final num2 = double.tryParse(secondController.text) ?? 0;
    setState(() {
      result = 'Result: ${num1 + num2}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculation Screen'),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: firstController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter First Number',
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: secondController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Second Number',
              ),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: calculate,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                padding: const EdgeInsets.symmetric(vertical: 18),
              ),
              child: const Text(
                'CALCULATE',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(height: 40),
            Center(
              child: Text(
                result,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
