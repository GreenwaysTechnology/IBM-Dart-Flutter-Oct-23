// void sayHello(){
//   print("hello");
//   return;
// }
sayHello() {
  print("hello");
  return;
}

int add({int? a = 0, int? b = 0}) {
  return a! + b!;
}

main() {
  sayHello();
  print(add());
  //print(add(a:null,b:null));
  print(add(a: 3, b: 4));
}
