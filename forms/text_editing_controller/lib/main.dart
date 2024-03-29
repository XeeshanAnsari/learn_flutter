import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Retrieve Text Input',
      home: MyCustomForm(),
    );
  }
}


class MyCustomForm extends StatefulWidget{
  @override
  _MyCustomForm createState() => _MyCustomForm();
}

class _MyCustomForm extends State<MyCustomForm> {
  final myController = TextEditingController();

  @override
  void initState() {
    super.initState();
    myController.addListener(_printLatestValue);
  }
  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }
  _printLatestValue(){
    print("Second text field: ${myController.text}");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Retrieve Text Input'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (text) {
                print('First text field : $text');
              },
            ),
            TextField(
              controller: myController
            ),
            RaisedButton(
              child: Text('show second input value'),
              onPressed: () {
                return showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(content: Text(myController.text));
                  }
                );
              },
            )
          ],
        ),
      )
    );
  }
}