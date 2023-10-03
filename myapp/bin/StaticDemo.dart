class Message {
  static String warning = "Warning";
  static String success = "Success";

  static void inc() {
    print("page count");
  }
}

void main() {
  print(Message.success);
  print(Message.warning);
  Message.inc();
}
