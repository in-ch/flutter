import 'package:examp/pages/screenA.dart';
import 'package:examp/pages/screenB.dart';
import 'package:examp/pages/screenC.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Columnandrow',
      theme: ThemeData(primaryColor: Colors.blue[50]),
      initialRoute: '/',
      routes: {
        '/': (context) => const ScreenA(),
        '/b': (context) => const ScreenB(),
        '/c': (context) => const ScreenC(),
      },
    );
  }
}
