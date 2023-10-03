class Person {
  String? name;
  int? age;

  Person(this.name, this.age);
}

class Student extends Person {
  //child property
  String? schoolName;

  Student({String? name = "name", int? age = 5, this.schoolName = "school"})
      : super(name, age);
}

void main() {
  Student student = Student();
  print("name ${student.name}");
  print("age ${student.age}");
  print("schoolName ${student.schoolName}");
}
