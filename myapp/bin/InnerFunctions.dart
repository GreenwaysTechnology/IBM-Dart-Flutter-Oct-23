counter() {
  print("counter outter fun");
  inc() {
    print("inc inner function");
  }

  inc();
}

// Function like() {
//   // return (int value) {
//   //   return value + 1;
//   // };
//   return (int value) => value + 1;
// }
//
// Function like = () {
//   return (int value) => value + 1;
// };
Function like = () => (int value) => value + 1;

void main() {
  counter();
  // inc();
  Function inc = like();
  print(inc.call(12));
  print(inc(33));
}
