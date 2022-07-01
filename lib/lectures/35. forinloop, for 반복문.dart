import 'dart:math';

Set<int> lottoNumber() {
  final random = Random();
  final Set<int> lottoSet = {};

  while (lottoSet.length != 6) {
    lottoSet.add(random.nextInt(45) + 1);
  }
  print('당청번호');
  print(lottoSet.toList());
  return lottoSet;
}

Set<int> myLottoNumber() {
  final random = Random();
  final Set<int> myLottoSet = {};
  while (myLottoSet.length != 6) {
    myLottoSet.add(random.nextInt(45) + 1);
  }
  print('내 당청번호');
  print(myLottoSet.toList());
  return myLottoSet;
}

int checkNumber(lottoSet, myLottoSet) {
  int match = 0;
  for (int lotto in lottoSet) {
    for (int myNum in myLottoSet) {
      if (lotto == myNum) {
        match++;
      }
    }
  }
  return match;
}

void main() {
  Set<int> lottoFinal = lottoNumber();
  Set<int> myFinal = myLottoNumber();

  int match = checkNumber(lottoFinal, myFinal);
  print("맞은 갯수는 $match 입니다.");
}
