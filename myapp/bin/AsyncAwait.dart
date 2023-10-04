Future<String> getUserName() {
  return Future.delayed(Duration(seconds: 2), () => "Subramanian");
}
Future<String> getMessage(String name) {
  return Future.delayed(Duration(seconds: 3), () => "Hello $name");
}

void getData() async {
  try {
    String name = await getUserName();
    String res =  await getMessage(name);
    print(res);
  } catch (e) {
    print(e);
  }
}

void main() {
  print("start");
  getData();
  print("end");
}
