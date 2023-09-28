void main() {
  int? a = null;
  var b = null;
  print("a $a b $b");
  int? c;
  print("c $c");
  c = 10;
  print("c $c");

  var d;
  print("d ${d}");
  c = 20;
  print("d ${d}");

 // String? name = "subramanian";
  String? name = null;
  // print("Name $name");
  //print("Name ${name.toUpperCase()}");
  //solution -1
  if (name != null) {
    print("Name ${name.toUpperCase()}");
  }
  //Solution2
  print("Name1 ${name?.toUpperCase()}");
  //Solution 3
  print("Name2 ${name!.toUpperCase()}");

}
