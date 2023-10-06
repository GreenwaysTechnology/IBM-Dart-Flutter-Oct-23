import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutterapps/App.dart';

void main() => runApp(MyApp());

//Title Widget
Widget titleSectionWidget = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*2*/
            Container(
              padding: EdgeInsets.only(bottom: 8),
              child: const Text(
                "Taj Mahal",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              "Agra,India",
              style: TextStyle(color: Colors.grey[500]),
            ),
          ],
        ),
      ),
      Expanded(
          child: Column(
        children: [Icon(Icons.star, color: Colors.red)],
      ))
    ],
  ),
);

class buildButtonColumn extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String label;

  const buildButtonColumn(this.color, this.icon, this.label);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w400, color: color),
          ),
        )
      ],
    );
  }
}

Color color = Colors.blue;
//Button Section
Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    buildButtonColumn(color, Icons.call, 'CALL'),
    buildButtonColumn(color, Icons.near_me, 'ROUTE'),
    buildButtonColumn(color, Icons.share, 'SHARE'),
    buildButtonColumn(color, Icons.access_alarm, 'ALARM')

  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Fluter App",
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Tourist Places"),
            ),
            backgroundColor: Colors.white,
            body: Column(children: [titleSectionWidget, buttonSection])));
  }
}
