import 'package:vector_math/vector_math.dart';
import 'package:myapp/add.dart' as adder;

void main() {
  Vector3 x = Vector3.zero(); // Zero vector
  Vector4 y = Vector4.all(4.0); // Vector with 4.0 in all lanes
  x.zyx = y.xzz; // Sets z,y,x the values in x,z,z
  print(x.zyx);
  print(adder.add(12, 33));
}