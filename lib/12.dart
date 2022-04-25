// ignore_for_file: avoid_print, unnecessary_new, file_names

class Person {
  late String name;
  late int age;
  late String sex; // 멤버 변수라고 부름.

  Person({String? name, int? age, String? sex}) {
    // 이렇게 {}로 묶으면 named argument가 됨.
    // 생성자라고 부름(인스턴스가 만들어 질 때 딱 한 번만 호출됨.)
    this.name = name!;
    this.age = age!;
    this.sex = sex!;
  }
}

int addNumber(int num1, int num2) {
  return num1 + num2;
}

void main() {
  Person p1 = new Person(age: 30);
  Person p2 = new Person(sex: 'male');

  print(p1.age);
  print(p2.age);
  addNumber(3, 4);
}
