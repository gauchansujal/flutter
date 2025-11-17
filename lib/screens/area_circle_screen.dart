import 'package:flutter/material.dart';
import 'dart:math';

class AreaCircleScreen extends StatefulWidget {
  const AreaCircleScreen({super.key});

  @override
  State<AreaCircleScreen> createState() => _AreaCircleScreenState();
}

class _AreaCircleScreenState extends State<AreaCircleScreen> {
  final radiusController = TextEditingController();
  double? area;

  void calculateArea() {
    double radius = double.tryParse(radiusController.text) ?? 0;
    setState(() {
      area = pi * radius * radius;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Area of Circle")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: const TextSpan(
                text: 'Hello',
                style: TextStyle(color: Colors.black, fontSize: 30),
                children: <TextSpan>[
                  TextSpan(
                    text: 'World',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.amber,
                    ),
                  ),
                  TextSpan(
                    text: '1',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            TextField(
              controller: radiusController,
              decoration: const InputDecoration(labelText: "Radius"),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: calculateArea,
              child: const Text("Calculate Area"),
            ),
            const SizedBox(height: 20),
            if (area != null)
              Text(
                "Area: ${area!.toStringAsFixed(2)}",
                style: const TextStyle(fontSize: 20),
              ),
          ],
        ),
      ),
    );
  }
}
