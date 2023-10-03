class User {
  //String? fname;
  String? _firstName;
  String? lastName;

  //setter
  set firstName(String firstName) {
    print("setter is called");
    //this keyword is implicit
    // this._firstName = firstName;
    _firstName = _firstName;
  }

  //getter
  String get fullName => "$_firstName $lastName";
}

main() {
  User user = User();
  user.firstName = "Subramanian";
  user.lastName = "Murugan";
  //call getter
  print(user.fullName);
}
