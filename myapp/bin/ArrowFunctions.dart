//if function has single line expression
var greet_ = () {
  print("Hello");
};
//single line expression are replaced by arrow
// var greet = () => {
//   print("Hello")
// };
var greet = () => print("Hello");
var add = (int a, int b) => a + b;
var multiply = ({int a = 0, int b = 0}) => "c = ${a * b}";

void main() {
  greet();
  print(add(10, 10));
  print(multiply(a: 10, b: 10));
}
