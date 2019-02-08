import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stack Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stack Demo'),
        ),
        body: Stack(
          alignment: const Alignment(1.6, 1.6),
          children: <Widget>[
            CircleAvatar(
              backgroundImage: NetworkImage(
                "https://avatars3.githubusercontent.com/u/14101776?v=4"
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black45,
              ),
              child: Text('Flutter'),
            )
          ],
        ),
      )
    );
  }
}
