void main() {
  //Here catch block will handle any type of Exception
  // try {
  //    int result = 12 ~/ 0;
  //    print("result $result");
  // } catch (e) {
  //   print("Handing error");
  //   print(e);
  // }
  //if i want to handle particular exception
  // try {
  //   int result = 12 ~/ 0;
  //   print("result $result");
  // } on IntegerDivisionByZeroException {
  //   print("Handing error");
  // }
  //Multiple generic excepiton
  try {
    int result = 12 ~/ 0;
    print("result $result");
  } catch (e, s) {
    print("Handing error");
    print(e);
  } finally {
    print("finally");
  }
}
