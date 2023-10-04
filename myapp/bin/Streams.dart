Stream<String> getUsers() {
  List<String> users = ["a", "b", "c", "d", "e"];
  return Stream.fromIterable(users);
}

void main() async {
  // print("start");
  // getUsers().listen((event) {
  //   print(event);
  // });
  await for (var event in getUsers()) {
    print(event);
  }
  // print("end");
}
