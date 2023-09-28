void sendMail(String? from, String? to, String? msg, [String? device="Mobile"]) {
  print("From $from");
  print("To $to");
  print("Message $msg");
  print("Device $device");
}

void main() {
  sendMail("admin@ibm.com", "foo@ibm.com", "You got a mail");
  sendMail(null, null, null);
  sendMail("admin@ibm.com", "foo@ibm.com", "You got a mail","Computer");

}
