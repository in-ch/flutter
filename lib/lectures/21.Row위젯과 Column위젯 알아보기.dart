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
      home: const MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Container Widget'),
          centerTitle: true,
        ),
        body: SafeArea(
            child: Row(
          // crossAxisAlignment: CrossAxisAlignment.stretch,

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // verticalDirection: VerticalDirection.up,

              children: [
                Container(width: 100, height: 100, color: Colors.green),
                Container(width: 100, height: 100, color: Colors.red),
                Container(width: 100, height: 100, color: Colors.blue)
              ],
            ),
          ],
        )));
  }
}
