import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic List Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Basic List Demo'),
        ),
        body: ListView(
          children: const <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text("Map"),
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Albums'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            )
          ],
        ),
      ),
    );
  }
}
