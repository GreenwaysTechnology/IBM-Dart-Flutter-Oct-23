class User {
  //instance variables
  int? id;
  String? name;
  int? age;
  String? city;
}

main() {
  User user = User();
  //access variables
  print("id ${user.id}");
  print("name ${user.name}");
  print("age ${user.age}");
  print("city ${user.city}");

}
