import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    final appTitle = 'Basic List';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body:ListView(
          children: <Widget>[
            InkWell(
              onTap: () {
                 print('Map Selected');
              },
              child: ListTile(
                leading: Icon(Icons.map),
                title: Text('Map'),
              ),
            ),
            InkWell(
              onTap: () {
                 print('Map Selected');
              },
              child: ListTile(
                leading: Icon(Icons.photo_album),
                title: Text('Album'),
              ),
            ),
            InkWell(
              onTap: () {
                 print('Phone Selected');
              },
              child: ListTile(
                leading: Icon(Icons.phone),
                title: Text('Phone'),
              ),
            ),
          ],
        )
      ),
    );
  }
}