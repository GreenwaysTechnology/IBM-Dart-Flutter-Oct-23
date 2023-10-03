class UserAPI {
  // String findAll() {
  //   return "findAll";
  // }
  String findAll() => "findAll";

  String save(String? name) => "$name";
}

void main() {
  UserAPI userAPI = UserAPI();
  print(userAPI.findAll());
  print(userAPI.save("Subramanian"));
}
