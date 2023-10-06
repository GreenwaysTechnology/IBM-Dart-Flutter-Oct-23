import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Pet App",
      home: MyPetHome(),
    );
  }
}

class MyPetHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: [
        Expanded(
            child: Text("Google",
                style: TextStyle(color: Colors.red),
                textAlign: TextAlign.center,
                textDirection: TextDirection.ltr)),
        Expanded(
            child: Text("Microsoft",
                textAlign: TextAlign.center, textDirection: TextDirection.ltr)),
        Expanded(
            child: Text("Facebook",
                textAlign: TextAlign.center, textDirection: TextDirection.ltr))
      ],
    ));
  }
}
