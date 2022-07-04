import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String result = 'no data found';
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OutlinedButton(
            onPressed: () {
              futureText();
            },
            child: const Padding(padding: EdgeInsets.all(8.0)),
          ),
          const SizedBox(height: 20.0),
          Text(
            result,
            style: const TextStyle(fontSize: 20.0, color: Colors.redAccent),
            textDirection: TextDirection.ltr,
          ),
          const Divider(
            height: 20.0,
            thickness: 2.0,
          ),
          FutureBuilder(
            builder: ((context, snapshot) {
              if (snapshot.hasData &&
                  snapshot.connectionState == ConnectionState.done) {
                return const SizedBox(width: 10.0);
              } else {
                return const CircularProgressIndicator();
              }
            }),
            future: futureText(),
          )
        ],
      ),
    ));
  }

  Future<void> futureText() async {
    Future.delayed(const Duration(seconds: 3)).then((value) => setState(() {
          result = 'The data is fetched';
          print(result);
          print('Here comes third');
        }));

    print('Here comes first');
    print('Here comes last one');
  }

  Future<String> myFuture() async {
    await Future.delayed(const Duration(seconds: 2));
    return 'another Future completed';
  }
}
