void callback(Function cb) {
  cb();
}

//via variable
Function myFun = () {
  print("My fun");
};
Function myArrowFun = () => print("My fun");

void main() {
  callback(myFun);
  callback(myArrowFun);
}
