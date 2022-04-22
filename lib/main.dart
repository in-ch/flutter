import 'package:flutter/material.dart';

void main() => runApp(MyInchApp());

class MyInchApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '인치 앱',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}
