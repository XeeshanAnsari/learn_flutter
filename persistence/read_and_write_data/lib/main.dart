import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:  'Reading and writting files',
      home: FlutterDemo(storage:CounterStorage()),
    );
  }
}

class CounterStorage {
  Future<String> get _localPath async {
    final directory =  await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/counter.txt');
  }

  Future<int> readCounter()  async {
    try{
      final file = await _localFile;
      String content = await file.readAsString();
      return int.parse(content);
    }catch(e){
      return 0;
    }
  }

  Future<File> writeCounter(int counter) async {
    final file = await _localFile;
    return file.writeAsString('$counter');
  }
}


class FlutterDemo extends StatefulWidget{
  final CounterStorage storage;
  FlutterDemo({Key key, this.storage}) :super(key: key);

  @override
  _FlutterDemoState createState() =>  _FlutterDemoState();
}


class _FlutterDemoState extends State<FlutterDemo>{
  int _counter;

  @override
  void initState(){
    super.initState();
    widget.storage.readCounter().then((int value){
      setState(() { _counter = value; });
    });
  }

  Future<File> _incrementCounter(){
    setState(() {
      _counter++;
    });

    return widget.storage.writeCounter(_counter);
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Reading and writing data'),
      ),
      body: Center(
        child: Text(
          'Button tapped $_counter time${_counter == 1 ? '' : 's'}.',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: Icon(Icons.add),
      ),
    );
  }
}