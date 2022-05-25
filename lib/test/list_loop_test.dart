void main() {
  List<String> rainbow = ['빨', '주', '노', '초', '파', '남', '보'];

  // for (int i = 0; i < rainbow.length; i++) {
  //   print(rainbow[i]);
  // }
  for (String value in rainbow) {
    // for in loop
    print("이번 값은? $value");
  }
  for (String element in rainbow) {
    // forEach
    print("이번 값은? $element");
  }
}
