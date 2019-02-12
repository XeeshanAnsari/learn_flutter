import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Field Focus',
      home: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget{
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm>{
  FocusNode myFocusNode;

  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Field Foucs'),
      ),
      body: Padding(
        padding:  const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              autofocus:true,
              onEditingComplete: () {
                FocusScope.of(context).requestFocus(myFocusNode);
              },
            ),
            TextField(
              focusNode: myFocusNode,
            ),
            RaisedButton(
              onPressed: () {
                print('Submited');
              },
              child: Text('Submit'),
            )
          ],
        ),
      ),
    );
  }
}