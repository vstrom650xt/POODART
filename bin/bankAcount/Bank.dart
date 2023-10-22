import 'dart:io';

import 'Account.dart';

class Bank {
  List<Account> accountList = [Account(12312323, 0, 'prueba')];

  createAccount() {
    print('u r going to create an account');
    Account newAccount = Account.ppp();
    newAccount.numAccount = 0;
    newAccount.balance = 0;
    accountList.add(newAccount);
  }

  closeAccount() {
    print('u r going to delete your an account , write the Account number');
    int numberCode = stdin.readLineSync() as int;
    bool removed = false;

    findAccount(numberCode);

    for (int i = 0; i < accountList.length; i++) {
      if (accountList[i].numAccount == numberCode) {
        accountList.removeAt(i);
        print('Account $numberCode has been successfully closed.');
        removed = true;
        return;
      }
    }

    if (removed) print("not found");
  }

  bool findAccount(int numberCode) {
    bool found = false;
    for (int i = 0; i < accountList.length; i++) {
      if (accountList[i].numAccount == numberCode) {
        found = true;
        return found;
      }
    }

    return found;
  }
}
