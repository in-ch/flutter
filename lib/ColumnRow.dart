// ignore_for_file: prefer_const_constructors, avoid_print

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
        title: Text('Appbar icon menu'),
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/thor.png'),
              ),
              otherAccountsPictures: const [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/thor.png'),
                  backgroundColor: Colors.white,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/thor.png'),
                  backgroundColor: Colors.white,
                )
              ],
              accountName: Text('inch'),
              accountEmail: Text('inch@neo.com'),
              onDetailsPressed: () {
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                  color: Colors.red[200],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0))),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.grey[850]),
              title: Text('Home'),
              onTap: () {
                print('Home is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.question_answer, color: Colors.grey[850]),
              title: Text('Q&A'),
              onTap: () {
                print('question is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.ac_unit, color: Colors.grey[850]),
              title: Text('ac unit'),
              onTap: () {
                print('ac unit is clicked');
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,   최대 공간을 차지하면서 가운데 정렬
          // mainAxisSize: MainAxisSize.min,  최소 공간을 차지하면서 가운데 정렬
          // verticalDirection: VerticalDirection.up,  아래부터 하나씩 쌓을 수 있음. down은 위에서 부터
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,  // 세로로 공간을 띄우면서
          // mainAxisAlignment:
          //     MainAxisAlignment.spaceBetween, // 세로로 공간을 완전히 차지하면서 거리 두면서
          // crossAxisAlignment: CrossAxisAlignment.end  // 오른쪽 끝점 정렬
          // crossAxisAlignment: CrossAxisAlignment.stretch // 가로 방향으로 쭉 늘려버림.
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
              child: Text('Container 1'),
            ),
            Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: Text('Container 2')),
            Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Text('Container 3')),
            Container(
              width: double
                  .infinity, // 끝점에 맞춰서 정렬을 해 버림. 이건 따로 존재하지 않고 위에 3개가 정렬이 되버림
            )
          ],
        ),
      )),
    );
  }
}
