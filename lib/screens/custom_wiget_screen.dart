import 'package:flutter/material.dart';

class CustomWigetScreen extends StatelessWidget {
  const CustomWigetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(child: Text("hello wrodl")),
    );
  }
}
