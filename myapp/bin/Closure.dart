String message = "Dart!!!";

Function makeAdder(int addBy) {
  //inner function :closure which going to access outter function variable it could be parameter
  //or local variable
  // return (int i) {
  //   return addBy + i;
  // };
  return (int i) => addBy + i;
}

void main() {
  String message = "Dart";
  showMessage() {
    //String message = "Dart is awesome";
    print("$message");
  }

  showMessage();
  Function adder = makeAdder(10);
  //call inner functtion
  print("inner calling ${adder(2)} ");
  print("inner calling ${adder(23)} ");
  print("inner calling ${adder(2232)} ");
  print("inner calling ${adder(22)} ");
  print("inner calling ${adder(52)} ");
  print("inner calling ${adder(20)} ");
}
