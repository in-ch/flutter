// ignore_for_file: prefer_const_constructors, avoid_print, avoid_renaming_method_parameters, avoid_web_libraries_in_flutter, unused_import, file_names

import 'package:flutter/material.dart';

class ScreenC extends StatelessWidget {
  const ScreenC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('ScreenC')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/b');
                  },
                  child: Text('Go to Screen B')),
            ],
          ),
        ));
  }
}
