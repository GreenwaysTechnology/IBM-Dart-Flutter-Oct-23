//Hihger order functions with named more args
//optional parameter
void exec(int? no, Function? callback) {
  //callback!(no);
  if (callback != null) {
    callback(no);
  }
}

//Named Parameter
// void asyncFun({String? name = "Subramanian", Function? f}) {
//   if (f != null) f();
// }
void asyncFun({String? name = "Subramanian", Function? f}) {
  if (f != null) f(name);
}

void doubleIt(int i) => print(i * i);

void login(
    {String? userName = "",
    String? password = "",
    Function? resolve,
    Function? reject}) {
  if (userName == 'admin' && password == 'admin') {
    resolve!("Login success for $userName");
  } else {
    reject!("Login failed,Retry");
  }
}

void main() {
  exec(10, doubleIt);
  // asyncFun(
  //     name: "Subramanian",
  //     f: () {
  //       print("Hello");
  //     });

  asyncFun(
      name: "Subramanian",
      f: (String name) {
        print(name);
      });

  asyncFun(name: "Subramanian", f: (String name) => print(name));
  login(
      userName: "admin",
      password: "admin",
      resolve: (String status) {
        print(status);
      },
      reject: (String error) {
        print(error);
      });

  login(
      userName: "foo",
      password: "bar",
      resolve: (String status) {
        print(status);
      },
      reject: (String error) {
        print(error);
      });

}
