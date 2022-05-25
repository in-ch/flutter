void main() {
  showData();
}

void showData() {
  startTack();
  accessData();
  endTack();
}

void startTack() {
  String info = '수행 시작';
  print(info);
}

Future<String> accessData() async {
  String account = '';

  Duration time = const Duration(seconds: 3);

  await Future.delayed(time, () {
    account = '데이터에 접속중';
  });
  return account;
}

void endTack() {
  String info = '잔액은 312,412,480,000원입니다.';
  print(info);
}
