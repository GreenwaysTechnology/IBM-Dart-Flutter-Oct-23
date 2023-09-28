void add(int a, int b) {
  int c = a + b;
  print("C $c");
}

void calculate(var a, var b) {
  int c = a * b;
  print("c $c}");
}

void main() {
  add(10, 10);
  // add("test","34");
  calculate(10, 10);
  calculate("12", "10");
}
