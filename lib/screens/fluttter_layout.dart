import 'package:flutter/material.dart';

class FluttterLayout extends StatelessWidget {
  const FluttterLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('flutter')),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          color: Colors.grey,
          child: Container(
            padding: EdgeInsets.all(20),
            color: Colors.white,
            child: GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              children: const [
                Icon(Icons.home, size: 40),
                Icon(Icons.star, size: 40),
                Icon(Icons.person, size: 40),
                Icon(Icons.phone, size: 40),
                Icon(Icons.email, size: 40),
                Icon(Icons.map, size: 40),
                Icon(Icons.camera, size: 40),
                Icon(Icons.settings, size: 40),
                Icon(Icons.lock, size: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
