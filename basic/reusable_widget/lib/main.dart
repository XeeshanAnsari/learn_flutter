import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  var data = ['card1','card2','card3','card4'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reusble Widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Reusble card Widget'),
        ),
        body: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, int index) {
                  return CustomCard(
                    index: index,
                    label: data[index],
                    onPress: () {
                      print(data[index]);
                    },
                  );
                },
              )
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  CustomCard({@required this.index,
              @required this.label,
              @required this.onPress});

  final index;
  final String label;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Text('$label'),
          FlatButton(
            child: Text('Press me'),
            onPressed: this.onPress,
          ),
        ],
      )
    );
  }
}