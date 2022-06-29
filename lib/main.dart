import 'package:flutter/material.dart';
import 'package:flutter_app/practice/widget/TextFunc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFunc(
                  text: 'Hello',
                  func: () {
                    print('asdfasdf');
                  },
                  show: true)
            ],
          )
        ],
      ),
    );
  }
}
