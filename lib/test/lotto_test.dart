import 'dart:math';

void main() {
  {
    var random = Random();
    List<int> lottoList = [];
    int num;

    for (int i = 0; i < 6; i++) {
      num = random.nextInt(45) + 1;
      lottoList.add(num);
    }

    print(lottoList);
  }
}
