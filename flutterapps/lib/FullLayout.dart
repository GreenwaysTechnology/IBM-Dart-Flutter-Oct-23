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
const String text =
    " The Taj Mahal is an ivory-white marble mausoleum on the right bank of the river Yamuna in Agra,"
    " Uttar Pradesh, India. It was commissioned in 1631 by the fifth Mughal emperor, "
    "Shah Jahan to house the tomb of his beloved wife, Mumtaz Mahal;"
    " it also houses the tomb of Shah Jahan himself";
Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: const Text(
    text,
    softWrap: true,
  ),
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
            body: ListView(children: [
              Image.asset(
                'images/1.jpg',
                width: 600,
                height: 240,
                fit: BoxFit.cover,
              ),
              titleSectionWidget,
              buttonSection,
              textSection
            ])));
  }
}
