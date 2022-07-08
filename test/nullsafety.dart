class Person {
  String? name;

  String nameChange(String? name) {
    this.name = name;
    if (name == null) {
      return "Please null check";
    } else {
      return name.toUpperCase();
    }
  }
}

void main() {
  Person p = Person();
  if (p.name == null) {
    print('need a name');
  } else {
    print(p.nameChange(p.name));
  }
}
