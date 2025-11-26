import 'package:batch_35_classwork/common/my_snackbar.dart';
import 'package:flutter/material.dart';

class FexiableExpandedScreen extends StatelessWidget {
  const FexiableExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Column with 2 Containers')),
      body: Column(
        children: [
          // ← This is the key!
          // First container
          // First container - TAPABLE!
          Expanded(
            flex: 2,
            child: GestureDetector(
              // ← This makes it tappable!
              onTap: () => showMySnckBar(context: context, message: "hello 1"),

              child: Container(
                width: double.infinity,
                color: Colors.blue,
                child: const Center(child: Text('Container 1')),
              ),
            ),
          ),

          // Second container
          Expanded(
            flex: 3,
            child: GestureDetector(
              onDoubleTap: () => showMySnckBar(
                context: context,
                message: "hello ",
                color: Colors.red,
              ),

              child: Container(
                width: double.infinity,
                color: Colors.green,
                child: const Center(child: Text('Container 2')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
