//Create a class which accepts only Integer
class IntData {
  int? data;

  IntData(this.data);
}
//Create a class which accepts only Double

class DoubleData {
  double? data;

  DoubleData(this.data);
}

void main() {
  IntData intData = IntData(10);
  DoubleData doubleData = DoubleData(34.56);
}
