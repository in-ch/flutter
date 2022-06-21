// ignore_for_file: prefer_const_constructors, avoid_print, avoid_renaming_method_parameters, avoid_web_libraries_in_flutter, unused_import

import 'dart:js';
import 'package:flutter/material.dart';

void main() => runApp(const MyInchApp());

class MyInchApp extends StatelessWidget {
  const MyInchApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('First page'),
          centerTitle: true,
          elevation: 0.0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                print('Shopping cart button is clicked');
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('search button is clicked');
              },
            ),
          ],
        ),
        body: Center(
            child: OutlinedButton(
          child: Text('Go to the Second page'),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => SecondPage()));
          },
        )));
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Second page'),
        ),
        body: Center(
            child: OutlinedButton(
          child: Text('Go to the First page'),
          onPressed: () {
            Navigator.pop(ctx);
          },
        )));
  }
}
