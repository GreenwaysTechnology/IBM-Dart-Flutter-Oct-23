class User {
  //instance variables
  int? id = 1;
  String? name = "Subramnaian";
  int? age = 43;
  String? city = "Coimbatore";
}

main() {
  User user = User();
  //after object creation using instance variables
  user.id = 100;
  user.name = "John";
  user.age = 34;
  user.city = "Coimbatore";
  //access variables
  print("id ${user.id}");
  print("name ${user.name}");
  print("age ${user.age}");
  print("city ${user.city}");
}
