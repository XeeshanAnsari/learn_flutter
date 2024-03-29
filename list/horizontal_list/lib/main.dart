import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Horizontal List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 200.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 160.0,
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                child: Center(
                  child: Icon(Icons.access_alarm, color: Colors.white),
                ),
                color: Colors.red,
              ),
              Container(
                width: 160.0,
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                color: Colors.blue,
              ),
              Container(
                width: 160.0,
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                color: Colors.green,
              ),
              Container(
                width: 160.0,
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                color: Colors.yellow,
              ),
              Container(
                width: 160.0,
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                color: Colors.orange,
              ),
            ],
          ),
        ),
      ),
    );
  }
}