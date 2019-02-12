import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Validation Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Form Validation demo'),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}


class MyCustomForm extends StatefulWidget{
  @override
  MyCustomFormState createState() => MyCustomFormState();
}


class MyCustomFormState extends State<MyCustomForm>{
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Enter your username'
            ),
            validator: (value) {
              if(value.isEmpty){
                return 'Please enter some text';
              }
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                if(_formKey.currentState.validate()) {
                  Scaffold.of(context)
                  .showSnackBar(SnackBar(content: Text('Processing Data')));
                }
              },
              child: Text('Submit'),
            ),
          )
        ],
      ),
    );
  }
}