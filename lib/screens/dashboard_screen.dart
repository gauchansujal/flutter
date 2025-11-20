import 'package:flutter/material.dart';

class FluttterLayout extends StatelessWidget {
  const FluttterLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('flutter')),
      body: Center(child: Text('flutter layout')),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/arithmetic'),
              child: Text('Arithmetic'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/simpleInterest'),
              child: Text('Simple Interest'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/areaCircle'),
              child: Text('Area of Circle'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/armstrong'),
              child: Text('Armstrong Number'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/palindrome'),
              child: Text('Palindrome Number'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/flutter'),
              child: Text('flutter layout'),
            ),

            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/row'),
              child: Text('Row reen'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/column'),
              child: Text('Column screen'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/columnview'),
              child: Text('Columnview screen'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/arthmatic2'),
              child: const Text('Arithmetic 2 Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
