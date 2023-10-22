import 'dart:ffi';
import 'dart:math';

class Account {
  int? numAccount;
  String? ownerName;
  int? balance;

  Account.ppp() {}

  Account.p(
      {required String ownerName, required int balance, required numAccount}) {
    this.balance = 0;
    this.numAccount = generateRandomAccount();
  }

  Account(this.numAccount, this.balance, this.ownerName);

  int generateRandomAccount() {
    Random random = Random();
    String num = '0';
    int cast;

    for (var i = 0; i < 10; i++) {
      num += random.nextInt(10) as String;
    }

    cast = num as int;

    print(num);

    return cast;
  }

  get getNumAccount => this.numAccount;

  set setNumAccount(numAccount) => this.numAccount = numAccount;

  get getOwnerName => this.ownerName;

  set setOwnerName(ownerName) => this.ownerName = ownerName;

  get getBalance => this.balance;

  set setBalance(balance) => this.balance = balance;
}
