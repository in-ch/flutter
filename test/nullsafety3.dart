void main() {
  int x = 50;
  int? y;
  if (x > 0) {
    y = x;
  }
  int value = y!;
  print(value);
}
