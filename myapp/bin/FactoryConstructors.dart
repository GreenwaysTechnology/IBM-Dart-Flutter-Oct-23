class Area {
  final int length;
  final int breadth;
  final int area;

  //private constructor
  const Area._interal(this.length, this.breadth) : area = length * breadth;

  //factory constructor
  factory Area(int length, int breadth) {
    //invoke private constructor.
    return Area._interal(length, breadth);
  }
}

void main() {
  Area area = Area(10, 20);
  print("length ${area.length} breadth ${area.breadth} area ${area.area}");
}
