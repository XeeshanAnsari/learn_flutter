import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(
    items: List<ListItem>.generate(
      1000,
      (i) => i % 6 == 0
          ? HeadingItem("Heading $i")
          : MessageItem("Sender $i", "Message body $i"),
    ),
  ));
}

class MyApp extends StatelessWidget{
  final List<ListItem> items;
  MyApp({Key key, @required this.items }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Mixed List',
      home:Scaffold(
        appBar: AppBar(
          title: Text('Mixed List'),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder:  (context, index) {
            final item = items[index];
            if(item is HeadingItem) {
              return ListTile(
                title: Text(
                  item.heading,
                  style: Theme.of(context).textTheme.headline,
                ),
              );
            } else if(item is MessageItem){
              return ListTile(
                title: Text(item.sender),
                subtitle: Text(item.body),
              );
            }
          },
        ),
      ),
    );
  }
}


// The base class for the different types of items the List can contain
abstract class ListItem {}

// A ListItem that contains data to display a heading
class HeadingItem implements ListItem {
  final String heading;

  HeadingItem(this.heading);
}

// A ListItem that contains data to display a message
class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);
}