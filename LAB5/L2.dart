// Create a class named Bank_Account with Account_No, User_Name, Email, Account_Type, and
// Account_Balance as data members. Also create a method GetAccountDetails() and
// DisplayAccountDetails(). Create a main method to demonstrate the Bank_Account class.

import 'dart:io';

class Bank_Account {
  String? Account_No;
  String? User_Name;
  String? Email;
  String? Account_Type;
  double? Account_Balance;

  List<Map<String, dynamic>> customers = [];

  void GetAccountDetails() {
    Map<String, dynamic> map = {};

    stdout.write("Please enter Account_No : ");
    map["Account_No"] = stdin.readLineSync();
    stdout.write("Please enter User_Name : ");
    map["User_Name"] = stdin.readLineSync();
    stdout.write("Please enter Email : ");
    map["Email"] = stdin.readLineSync();
    stdout.write("Please enter Account_Type : ");
    map["Account_Type"] = stdin.readLineSync();
    stdout.write("Please enter Account_Balance : ");
    map["Account_Balance"] = double.parse(stdin.readLineSync()!);
    print("\n");

    customers.add(map);
  }

  void DisplayAccountDetails() {
    print(customers.length);
    for (int i = 0; i < customers.length; i++) {
      Map<String, dynamic> map = customers[i];
      print("Account_No      : ${map['Account_No']}");
      print("User_Name       : ${map['User_Name']}");
      print("Email           : ${map['Email']}");
      print("Account_Type    : ${map['Account_Type']}");
      print("Account_Balance : ${map['Account_Balance']}");
      print("-----------------------");
      print("\n");
    }
  }
}

void main(List<String> args) {
  // stdout.write("Please enter how many user information you want to enter : ");
  // int n = int.parse(stdin.readLineSync()!);

  // for (int i = 0; i < n; i++) {
  //   print("Enter customer${i + 1} information \n");
  //   Bank_Account()..GetAccountDetails();
  // }

  // Bank_Account()..DisplayAccountDetails();

  Bank_Account()
    ..GetAccountDetails()
    ..GetAccountDetails()
    ..DisplayAccountDetails();
}
