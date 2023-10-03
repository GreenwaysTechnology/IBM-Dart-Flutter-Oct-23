class Animal {
  void eat() {
    print("animal eats");
  }
}

class Dog extends Animal {
  bark() {
    print("dog is barking");
  }

  @override
  void eat() {
    print("dog eats");
    super.eat();
  }
}

void main() {
  Dog dog = Dog();
  dog.eat();
  dog.bark();

  //
  Animal animal = Dog();
  animal.eat();
  //animal.bark();
  //here we convert animal into dog.
  Dog tmpDog = animal as Dog;
  tmpDog.bark();
}
