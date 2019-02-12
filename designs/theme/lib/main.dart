import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyThemeWidget();
  }
}

class MyThemeWidget extends StatefulWidget {
  @override
  _MyThemeWidget createState() => _MyThemeWidget();
}

class _MyThemeWidget extends State<MyThemeWidget> { 
  bool darkTheme=false;

  void _changeTheme() {
    setState(() {
      darkTheme=!darkTheme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theme Demo',
      theme: ThemeData(
        brightness: (darkTheme ? Brightness.dark :  Brightness.light),
        primaryColor: Colors.lightBlue,
        accentColor: Colors.cyan,

        fontFamily: 'Montserrat',

        textTheme: TextTheme(
          headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        )
      ),
      home: MyHomePage(
        title: 'Theme Demo Page',
        darkTheme: darkTheme,
        onChangeTheme: _changeTheme
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  
  MyHomePage({Key key, this.title , this.darkTheme, this.onChangeTheme }) : super(key: key);
  
  final String title;
  final bool darkTheme;
  final Function onChangeTheme;
  @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: Text(title)),
       body: Center(
          child: Column(
          children: <Widget>[
            Text(
              'Sample text',
              style: Theme.of(context).textTheme.title,
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Icon(Icons.lightbulb_outline,
                size: 48.0, color: Colors.redAccent)
            ),
            RaisedButton(
               child:(
                darkTheme ? Text('Dark Theme') : Text('Light Theme')
               ),
               onPressed: onChangeTheme,
              )
          ],
        ),
      )
     );
   }
}