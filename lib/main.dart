// ignore_for_file: prefer_const_constructors, avoid_print, avoid_renaming_method_parameters, avoid_web_libraries_in_flutter, unused_import

import 'dart:js';
import 'package:flutter/material.dart';
import 'package:flutter_app/screenA.dart';
import 'package:flutter_app/screenB.dart';
import 'package:flutter_app/screenC.dart';

void main() => runApp(const MyInchApp());

class MyInchApp extends StatelessWidget {
  const MyInchApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => ScreenA(),
        '/b': (context) => ScreenB(),
        '/c': (context) => ScreenC(),
      },
    );
  }
}
