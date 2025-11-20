import 'package:flutter/material.dart';

class Arthamatic2Screen extends StatefulWidget {
  const Arthamatic2Screen({super.key});

  @override
  State<Arthamatic2Screen> createState() => _Arthamatic2ScreenState();
}

class _Arthamatic2ScreenState extends State<Arthamatic2Screen> {
  final TextEditingController _firstController = TextEditingController();
  final TextEditingController _secondController = TextEditingController();

  String _operation = 'Add'; // default selected radio
  String _result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Arithmetic "),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // First number
            TextField(
              controller: _firstController,
              decoration: const InputDecoration(
                labelText: "Enter first number",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),

            const SizedBox(height: 20),

            // Second number
            TextField(
              controller: _secondController,
              decoration: const InputDecoration(
                labelText: "Enter second number",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),

            const SizedBox(height: 20),

            // Radio list
            Column(
              children: [
                RadioListTile<String>(
                  title: const Text("Add"),
                  value: 'Add',
                  groupValue: _operation,
                  onChanged: (value) {
                    setState(() {
                      _operation = value!;
                    });
                  },
                ),
                RadioListTile<String>(
                  title: const Text("Subtract"),
                  value: 'Subtract',
                  groupValue: _operation,
                  onChanged: (value) {
                    setState(() {
                      _operation = value!;
                    });
                  },
                ),
                RadioListTile<String>(
                  title: const Text("Multiply"),
                  value: 'Multiply',
                  groupValue: _operation,
                  onChanged: (value) {
                    setState(() {
                      _operation = value!;
                    });
                  },
                ),
                RadioListTile<String>(
                  title: const Text("Divide"),
                  value: 'Divide',
                  groupValue: _operation,
                  onChanged: (value) {
                    setState(() {
                      _operation = value!;
                    });
                  },
                ),
                RadioListTile<String>(
                  title: const Text("Add"),
                  value: 'Add',
                  groupValue: _operation,
                  onChanged: (value) {
                    setState(() {
                      _operation = value!;
                    });
                  },
                ),
                RadioListTile<String>(
                  title: const Text("Subtract"),
                  value: 'Subtract',
                  groupValue: _operation,
                  onChanged: (value) {
                    setState(() {
                      _operation = value!;
                    });
                  },
                ),
                RadioListTile<String>(
                  title: const Text("Multiply"),
                  value: 'Multiply',
                  groupValue: _operation,
                  onChanged: (value) {
                    setState(() {
                      _operation = value!;
                    });
                  },
                ),
                RadioListTile<String>(
                  title: const Text("Divide"),
                  value: 'Divide',
                  groupValue: _operation,
                  onChanged: (value) {
                    setState(() {
                      _operation = value!;
                    });
                  },
                ),
                RadioListTile<String>(
                  title: const Text("Add"),
                  value: 'Add',
                  groupValue: _operation,
                  onChanged: (value) {
                    setState(() {
                      _operation = value!;
                    });
                  },
                ),
                RadioListTile<String>(
                  title: const Text("Subtract"),
                  value: 'Subtract',
                  groupValue: _operation,
                  onChanged: (value) {
                    setState(() {
                      _operation = value!;
                    });
                  },
                ),
                RadioListTile<String>(
                  title: const Text("Multiply"),
                  value: 'Multiply',
                  groupValue: _operation,
                  onChanged: (value) {
                    setState(() {
                      _operation = value!;
                    });
                  },
                ),
                RadioListTile<String>(
                  title: const Text("Divide"),
                  value: 'Divide',
                  groupValue: _operation,
                  onChanged: (value) {
                    setState(() {
                      _operation = value!;
                    });
                  },
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Calculate button
            ElevatedButton(
              onPressed: () {
                double num1 = double.tryParse(_firstController.text) ?? 0;
                double num2 = double.tryParse(_secondController.text) ?? 0;
                double res = 0;

                switch (_operation) {
                  case 'Add':
                    res = num1 + num2;
                    break;
                  case 'Subtract':
                    res = num1 - num2;
                    break;
                  case 'Multiply':
                    res = num1 * num2;
                    break;
                  case 'Divide':
                    res = num2 != 0 ? num1 / num2 : 0;
                    break;
                }

                setState(() {
                  _result = 'Result: $res';
                });
              },
              child: const Text("Calculate"),
            ),

            const SizedBox(height: 20),

            // Show result
            Text(
              _result,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
