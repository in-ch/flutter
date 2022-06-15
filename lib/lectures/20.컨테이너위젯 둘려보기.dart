import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toast Bar',
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
        child: Container(
          color: Colors.red,
          width: 100,
          height: 100,
          margin: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Hello World'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
