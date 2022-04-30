// ignore_for_file: prefer_const_constructors, avoid_print, avoid_renaming_method_parameters, avoid_web_libraries_in_flutter, unused_import, file_names

import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {
  const ScreenB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('ScreenB')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/c');
                  },
                  child: Text('Go to Screen C')),
            ],
          ),
        ));
  }
}
