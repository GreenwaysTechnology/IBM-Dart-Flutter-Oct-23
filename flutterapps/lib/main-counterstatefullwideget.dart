import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //declare state variable which is going to change the update the ui
  int _counter = 0;

  //Listener
  void _onPressed() {
    print("Button is clicked");
    setState(() {
      //This call to setState tells the fluttr that has changed in this state, which causes it re run the build below
      // so that the display can reflect the updated values. if change counter without setState, which will not
      //trigger build method, if no build is triggered, then ui will not be updated
      _counter++;
    });
  }

  void _onDecrement() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("build is called");
    return MaterialApp(
      title: 'StateFull Widget',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('StateFull'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: _onPressed, child: const Text("increment")),
            const SizedBox(width: 16),
            ElevatedButton(
                onPressed: _onDecrement, child: const Text("decrement")),
            const SizedBox(width: 16),
            Text("Counter $_counter")
          ],
        ),
      ),
    );
  }
}
