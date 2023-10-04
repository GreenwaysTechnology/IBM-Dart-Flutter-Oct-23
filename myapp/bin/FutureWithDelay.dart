Future<String> getUserName() {
  return Future.delayed(Duration(seconds: 2), () => "Subramnaian");
}
void main(){
  print("start");
  getUserName().then((value) => print(value));
  print("end");
}
