class Person {
  String name = 'Alek';
  late int age;
  late String sex;
}

void main() {
  Person p1 = new Person();
  p1.age = 30;
  print(p1.age);
}
