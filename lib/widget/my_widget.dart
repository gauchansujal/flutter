import 'package:flutter/material.dart';
import 'my_button.dart'; // Import your custom button widget

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Two Buttons & TextField Example")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: double.infinity,
              color: Colors.blue[100],
              alignment: Alignment.center,
              child: const Text(
                "This is a container",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter something",
              ),
            ),
            const SizedBox(height: 20),
            MyButton(
              text: "Button 1",
              onPressed: () {
                print("Button 1 pressed");
              },
            ),
            const SizedBox(height: 10),
            MyButton(
              text: "Button 2",
              onPressed: () {
                print("Button 2 pressed");
              },
            ),
          ],
        ),
      ),
    );
  }
}
