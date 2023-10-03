mixin Electric {
  void electric() {
    print("Electric");
  }
}
mixin Petrol {
  void petrol() {
    print("Petrol");
  }
}

class Car with Electric, Petrol {}

void main() {
  var car = Car();
  car.electric();
  car.petrol();
}
