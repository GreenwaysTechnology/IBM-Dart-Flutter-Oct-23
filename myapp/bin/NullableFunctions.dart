void sayHello(String? name) {
  var res = name ?? "Your Name";
  print("$res");
}

void main() {
  sayHello("Subramanian");
  sayHello(null);
}
