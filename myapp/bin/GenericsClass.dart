//Create a class which accepts only Integer
class Data<T> {
  T? data;

  Data(this.data);
}

class Map<K, V> {
  K? Key;
  V? Value;

  Map(this.Key, this.Value);
}

class Adder {
  T add<T, E>(T value1) {
    return value1;
  }
}

//Generic with Restrictions
class MyNumber<T extends num> {
  T data;

  MyNumber(this.data);

  num add<T extends num>(T value1, T value2) {
    return value1 + value2;
  }
}

void main() {
  //Data intData = Data<int>(10.34);
  Data intData = Data<int>(10);
  Map map = Map<int, String>(1, "Value");

  Adder adder = Adder();
  adder.add<int, int>(10);

  // MyNumber<String>("Helllo");
  // MyNumber<bool>(true);
  MyNumber(10);
  MyNumber(20.45);
  // MyNumber(true);
  MyNumber myNumber = MyNumber(0);
  print(myNumber.add(13, 10));
}
