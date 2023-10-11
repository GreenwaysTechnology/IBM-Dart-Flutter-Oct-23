import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';

void main() {
  //We need to inject Provider in the root
  runApp(
    ChangeNotifierProvider(
      create: (context) => Counter(),
      child: const MyApp(),
    ),
  );
}

//ChangeNotifier: with Model binding: Model

class Counter with ChangeNotifier {
  //state
  int value = 0;

  //logic; actions
  void increment() {
    value++;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Provider with Flutter', home: const MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider with Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("You have pushed the button many times:"),
            //Consumer(listener) looks for any parent Provider Widget and retrives its model(Counter)
            //Then it uses that model to build widets, and will tigger rebuilds if the model is updated
            Consumer<Counter>(
                builder: (context, counter, child) => Text("${counter.value}"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //You can access provider any where you have access to the context. Provider is bound with context object
          //Provider.of<Counter>(context)
          //Get Referenc of Counter Model instance
          var counter = context.read<Counter>();
          counter.increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
