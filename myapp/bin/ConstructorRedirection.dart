class Point {
  double x, y;

  Point(this.x, this.y);

  //redirect to constructor
  Point.createPoint(double x, double y) : this(x, y);
}

void main() {
  Point p = Point.createPoint(23, 34);
  print(p.x);
  print(p.y);

}
