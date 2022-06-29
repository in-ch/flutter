// ignore_for_file: avoid_print

import 'dart:io';

void main() => showData();

void showData() async {
  startTask();
  String account = await accessData();
  fetchData(account);
}

void startTask() {
  String info1 = '요청수행 시작';
  Duration time = const Duration(seconds: 3);
  sleep(time);

  print(info1);
}

Future<String> accessData() async {
  late String account;

  Duration time = const Duration(seconds: 2);
  if (time.inSeconds > 2) {
    await Future.delayed(time, () {
      account = '800억';
      print(account);
    });
  } else {
    String info2 = '데이터를 가져왔습니다.';
    print(info2);
  }

  return account;
}

void fetchData(account) {
  String info3 = '잔액은 $account입니다.';
  print(info3);
}
