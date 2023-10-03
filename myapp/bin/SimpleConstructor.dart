class User {
  //instance variables
  int? id;
  String? name;
  int? age;
  String? city;

  User(this.id, this.name, this.age, this.city);
}

main() {
  User user = User(1, "Subramanian", 43, "Coimbatore");
  //access variables
  print("id ${user.id}");
  print("name ${user.name}");
  print("age ${user.age}");
  print("city ${user.city}");
}
