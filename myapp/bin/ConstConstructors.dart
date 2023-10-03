class Point {
  final int? x;
  final int? y;

  //constant constructors
  //const Point(this.x, this.y);
  const Point({this.x = 0, this.y = 0});
}

//
main() {
  Point point = Point(x: 1, y: 3);
  print("X ${point.x} Y ${point.y}");
  //point.x =10;

  //without immutable
  Point p1 = Point(x: 1, y: 3);
  Point p2 = Point(x: 1, y: 3);
  //check p1 and p2 both points one object or many objects
  print("p1 hashcode ${p1.hashCode} ");
  print("p2 hashcode ${p2.hashCode} ");

  //immutable
  Point p3 = const Point(x: 1, y: 3);
  Point p4 = const Point(x: 1, y: 3);
  //check p1 and p2 both points one object or many objects
  print("p3 hashcode ${p3.hashCode} ");
  print("p4 hashcode ${p4.hashCode} ");
}
