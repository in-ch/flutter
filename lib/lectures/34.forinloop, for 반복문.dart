import 'dart:math';

List<int> lottoNumber() {
  var random = Random();
  List<int> lottoList = [];
  var num;
  for (int i = 0; i < 6; i++) {
    num = random.nextInt(45) + 1;
    lottoList.add(num);
  }
  print('당청번호');
  print(lottoList);
  return lottoList;
}

List<int> myLottoNumber() {
  var random = Random();
  List<int> myLottoList = [];
  var num;
  for (int i = 0; i < 6; i++) {
    num = random.nextInt(45) + 1;
    myLottoList.add(num);
  }
  print('내 당청번호');
  print(myLottoList);
  return myLottoList;
}

void checkNumber(lottoList, myLottoList) {
  int match = 0;
  for (int lotto in lottoList) {
    for (int myNum in myLottoList) {
      if (lotto == myNum) {
        print("당첨 번호는? $myNum");
        match++;
      }
    }
  }
}

void main() {
  List<int> lottoFinal = lottoNumber();
  List<int> myFinal = myLottoNumber();

  checkNumber(lottoFinal, myFinal);
}
