//Normal function as Higher order function
void callback(Function f) {
  f("Hello");
}

//Anonymous function as Higher Order function
Function map = (Function transform) {
  transform();
};
//Arrow function as Higher order function
Function filter = (Function filter) => filter();

var hello = (String name) {
  print("Your Name is $name");
};
var hai = (String name) => print("Your Name is $name");

void main() {
  callback(hello);
  callback(hai);
  //via value
  callback((String name) {
    print("Your Name is $name");
  });
  callback((String name) => print("Your Name is $name"));

  map(() => print("map transform"));
  filter(() => print("filter "));
}
