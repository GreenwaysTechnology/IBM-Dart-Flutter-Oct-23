abstract class Animal {
  void eat();
  void canWalk();
  void canRun();
}

class Dog implements Animal {
  @override
  void eat() {
    print("Dog eat");
  }

  @override
  void canRun() {
    print("Dog can run");
  }

  @override
  void canWalk() {
    // TODO: implement canWalk
    print("Dog can walk");
  }
}

void main() {
  Animal dog = Dog();
  dog.eat();
  dog.canWalk();
  dog.canRun();
}
