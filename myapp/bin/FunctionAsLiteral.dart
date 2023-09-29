
void sayHello() {
  print("Hello");
}

void main() {
  //invoke function
  //sayHello();
  //Here var is keyword and hello is variable , sayHello is function
  var hello = sayHello;
  hello();
  //Type Annotation
  Function tmpHello = sayHello;
  tmpHello();

  //way of calling functions: using variable hello()
  //using variable.call()
  hello.call();
  tmpHello.call();
}
