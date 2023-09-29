void sendMail(String? from, String? to, String? msg, [String? device="Mobile",String? location]) {
  print("From $from");
  print("To $to");
  print("Message $msg");
  print("Device $device");
  print("location $location");
}
// void doStuff(String? str3,[String? str1, String? str2]),String? str4){
//
// }

void main() {
  sendMail("admin@ibm.com", "foo@ibm.com", "You got a mail");
  sendMail(null, null, null);
  sendMail("admin@ibm.com", "foo@ibm.com", "You got a mail","Computer");

}
