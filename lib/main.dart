// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice game',
      home: LogIn(),
    );
  }
}

class LogIn extends StatefulWidget {
  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log in'),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.search), onPressed: () {})
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 50)),
            Center(
              child: Image(image: AssetImage('images/chef.gif')),
            ),
            Form(
                child: Theme(
                    data: ThemeData(
                        primaryColor: Colors.teal,
                        inputDecorationTheme: InputDecorationTheme(
                            labelStyle: TextStyle(color: Colors.teal))),
                    child: Container(
                      padding: EdgeInsets.all(40.0),
                      child: Column(
                        children: const [
                          TextField(
                            decoration:
                                InputDecoration(labelText: "Enter dice"),
                            keyboardType: TextInputType.text,
                          ),
                          TextField(
                            decoration:
                                InputDecoration(labelText: "Enter password"),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                          ),
                          SizedBox(height: 40.0),
                          OutlinedButton(
                            onPressed: (null),
                            child: Icon(Icons.arrow_forward),
                          )
                        ],
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
