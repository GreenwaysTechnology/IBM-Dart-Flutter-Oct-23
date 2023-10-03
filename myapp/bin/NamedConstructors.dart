class User {
  //instance variables
  int? id;
  String? name;
  int? age;
  String? city;

  // Named parameter constructors with default value
  User({this.id = 0, this.name = "name", this.age = 18, this.city = "city"});

  //Named constructors
  User.fromJson(
      {this.id = 0, this.name = "name", this.age = 18, this.city = "city"});

  //Named Constructors without any args
  User.createUser()
      : id = 1,
        name = "Ram",
        age = 18,
        city = "Chennai";
}

main() {
  User user = User(id: 1, name: "Subramanian", age: 43, city: "Coimbatore");

  //access variables
  print("id ${user.id}");
  print("name ${user.name}");
  print("age ${user.age}");
  print("city ${user.city}");

  user = User();
  print("id ${user.id}");
  print("name ${user.name}");
  print("age ${user.age}");
  print("city ${user.city}");

  user = User(id: 1, name: 'Raj', age: 33);
  print("id ${user.id}");
  print("name ${user.name}");
  print("age ${user.age}");
  print("city ${user.city}");

  user = User.fromJson(id: 1, name: 'Raj', age: 33);
  print("id ${user.id}");
  print("name ${user.name}");
  print("age ${user.age}");
  print("city ${user.city}");

  user = User.createUser();
  print("id ${user.id}");
  print("name ${user.name}");
  print("age ${user.age}");
  print("city ${user.city}");
}
