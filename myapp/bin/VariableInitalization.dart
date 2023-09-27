void main() {
  var i = 10;
  print("i $i");
  //reinitalize the variable
  i = 90;
  print("i $i");

  //without type: type inferenence
  //final j = 10;
  final int j = 10;
  print("j $j");
  //j = 33434;

  //const d = 10;
  const int d = 10;
  print("d $d");
  //d =90; //- cant be reinitialized
}
