import 'package:flutter/material.dart';

//screen 1
class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //Navigate to second Route
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ScreenTwo()));
          },
          child: const Text('Go'),
        ),
      ),
    );
  }
}

//screen 2
class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //Navigate to first Route
            Navigator.pop(context);
          },
          child: const Text('Go Back'),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(title: 'Navigation demo', home: ScreenOne()));
}
