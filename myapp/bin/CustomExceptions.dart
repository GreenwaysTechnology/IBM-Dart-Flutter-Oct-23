class DepositException implements Exception {
  String errorMessage() {
    return 'You Cant enter Amount less than 0';
  }
}

void deposit(int amount) {
  if (amount <= 0) {
    throw DepositException();
  }
  print("deposited amount $amount");
}

void main() {
  try {
    deposit(100);
    deposit(-10);
  } on DepositException catch (e) {
    print(e.errorMessage());
  }
}
