import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'state full widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyStateFullWidget(title: 'State Change Demo'),
    );
  }
}

class MyStateFullWidget extends StatefulWidget{
  MyStateFullWidget({Key key, this.title }): super(key: key);
  final String title;

  @override
  _MyStateFullWidget createState() => _MyStateFullWidget();
}


class _MyStateFullWidget extends State<MyStateFullWidget>{
  bool showText=true;

  void toggleShowText() {
    setState(() {
      showText=!showText;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            (showText
              ?(Text('Hello world'))
              :Container()
            ),
            Padding(
              padding: EdgeInsets.only(top:70.0),
              child: RaisedButton(
                color: (showText ?  Colors.lightGreen : Colors.lightBlue),
                textColor: Colors.white,
                onPressed: toggleShowText,
                child: (showText
                  ? (Text('hide text'))
                  :Text('show text')
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}