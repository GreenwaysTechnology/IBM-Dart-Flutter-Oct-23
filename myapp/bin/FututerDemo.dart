//Future value
Future<String> getValue() {
  return Future.value("Hello,I am async value");
}

Future<String> getError() {
  return Future.error("somthing went wrong!");
}

void main() {
  print("start");
  getValue().then((value) => print(value));
  getError().then((value) => print(value));
  print("going on");
  print("end");
}
