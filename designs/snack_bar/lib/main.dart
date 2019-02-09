import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnackBar Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('SnackBar Demo'),
        ),
        body: SnackBarPage(),
      )
    );
  }
}

class SnackBarPage extends StatelessWidget {

  dynamic _showSnack(context) {
    final snackBar = SnackBar(
      content: Text('Welcome'),
    );
    Scaffold.of(context).showSnackBar(snackBar);
  }

  dynamic _showSnackWithUndo(context) {
    final snackBar = SnackBar(
      content: Text('Action Completed'),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {
          print('Undo Action');
        },
      ),
    );
    Scaffold.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () => _showSnack(context),
            child: Text('Show SnackBar'),
          ),
          RaisedButton(
            onPressed: () => _showSnackWithUndo(context),
            child: Text('Show SnackBar with undo'),
          ),
        ],
      )
    );
  }
}
