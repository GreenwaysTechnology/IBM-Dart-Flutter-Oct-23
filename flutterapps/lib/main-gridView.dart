import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Grid",
      home: Scaffold(
        appBar: AppBar(title: const Text('Grid')),
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(100, (index) {
            return Center(
              child: Text('Item $index'),
            );
          }),
        ),
      ),
    );
  }
}
