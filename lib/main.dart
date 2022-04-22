import 'package:flutter/material.dart';

void main() => runApp(const MyInchApp());

class MyInchApp extends StatelessWidget {
  const MyInchApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '인치 앱',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var center = Center(
      child: Column(
        children: const <Widget>[
          Text('Hello1'),
          Text('Hello'),
          Text('Hello'),
        ],
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('인치 앱'),
      ),
      body: center,
    );
  }
}
