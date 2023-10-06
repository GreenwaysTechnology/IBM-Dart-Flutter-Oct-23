import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dog App",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Dog App", textAlign: TextAlign.center),
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DogName("Puppy 1"),
                DogName("Puppy 2"),
                DogName("Puppy 3")
              ],
            ),
          )),
    );
  }
}

class DogName extends StatelessWidget {
  final String dogName;

  const DogName(this.dogName);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: Colors.lightGreen),
      child: Padding(padding: EdgeInsets.all(8.0), child: Text(dogName)),
    );
  }
}
