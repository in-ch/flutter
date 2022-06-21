import 'package:flutter/material.dart';
import 'package:flutter_app/lectures/pages/screenA.dart';
import 'package:flutter_app/lectures/pages/screenB.dart';
import 'package:flutter_app/lectures/pages/screenC.dart';

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
