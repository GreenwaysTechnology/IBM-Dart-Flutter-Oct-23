import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //to track item:
  int _selectedIndex = 0;

  //Listener
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print("Selected index $_selectedIndex");
    });
  }

  //To display dynamic widget when i click drawer item
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  //
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Index 0: Home', style: optionStyle),
    Text('Index 1: InBox', style: optionStyle),
    Text('Index 2: Archive', style: optionStyle)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer")),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text("Header")),
            ListTile(
              title: Text('Home'),
              onTap: () {
                print("Home");
                _onItemTapped(0);
                //close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
                title: Text('Inbox'),
                onTap: () {
                  print("Inbox");
                  _onItemTapped(1);
                  Navigator.pop(context);
                }),
            ListTile(
                title: Text('Archive'),
                onTap: () {
                  print("Archive");
                  _onItemTapped(2);
                  Navigator.pop(context);
                })
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Drawer',
      home: MyHomePage(title: 'title'),
    );
  }
}
