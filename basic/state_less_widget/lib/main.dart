import 'package:flutter/material.dart';

void main() => runApp(MyStateLessWidget(text: 'State less widget'));

class MyStateLessWidget extends StatelessWidget{
  final String text;
  MyStateLessWidget({Key key, this.text}) :super(key: key);
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: text,
      home: Scaffold(
        appBar: AppBar(
          title: Text(text),
        ),
        body: Center(
          child: Text(text, textDirection: TextDirection.ltr,),
        )
      ),
    ); 
  }
}