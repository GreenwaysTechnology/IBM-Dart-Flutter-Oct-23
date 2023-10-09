//Section List
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(
    items: List<ListItem>.generate(1000, (index) {
      return (index % 6 == 0)
          ? HeadingItem("Heading $index")
          : MessageItem("Sender $index", "Message body $index");
    }),
  ));
}

class MyApp extends StatelessWidget {
  final List<ListItem> items;

  const MyApp({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Section List',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Section List'),
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return ListTile(
                title: item.buildTitle(context),
                subtitle: item.buildSubTitle(context),
              );
            }),
      ),
    );
  }
}

abstract class ListItem {
  Widget buildTitle(BuildContext context);

  Widget buildSubTitle(BuildContext context);
}

//A Listem that contains data to display a heading
class HeadingItem implements ListItem {
  final String heading;

  HeadingItem(this.heading);

  @override
  Widget buildSubTitle(BuildContext context) => const SizedBox.shrink();

  @override
  Widget buildTitle(BuildContext context) {
    return Text(
      heading,
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }
}

//A ListItem that contains data to a display message
class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);

  @override
  Widget buildSubTitle(BuildContext context) => Text(sender);

  @override
  Widget buildTitle(BuildContext context) => Text(body);
}
