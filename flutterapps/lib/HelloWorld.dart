import 'package:flutter/material.dart';

class HelloWorldWidget extends StatelessWidget {
  const HelloWorldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Hello World!!!",
        textDirection: TextDirection.ltr,
        style: TextStyle(
            color: Colors.cyan,
            fontSize: 50.0,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.red),
      ),
    );
  }
}
