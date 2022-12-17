// Create components
// Read/display components
// update components
// Delete components

import 'dart:io';

class murder_case {
  int? case_no;
  String? case_name;
  String? case_date;
  String? case_description;
}

void main(List<String> args) {
  List<Map<String, dynamic>> cases = [];

  print(
      "Please enter following choices 1.Add case \n2.Display \n3.Update \n4.Delete \n5.Quit");
  int m = int.parse(stdin.readLineSync()!);

  while (m != 5) {
    if (m == 1) {
      Map<String, dynamic> map = {};
      print("Please enter case No : ");
      map['case_no'] = int.parse(stdin.readLineSync()!);
      print("Please enter case Name : ");
      map['case_name'] = (stdin.readLineSync()!);
      print("Please enter case Date : ");
      map['case_date'] = (stdin.readLineSync()!);
      print("Please enter case Description : ");
      map['case_description'] = (stdin.readLineSync()!);
      cases.add(map);
      print("--------------");
    } else if (m == 2) {
      if (cases.isEmpty)
        print("Empty");
      else {
        for (int i = 0; i < cases.length; i++) {
          Map<String, dynamic> map = cases[i];
          print("Case No : ${map['case_no']}");
          print("Case Name : ${map['case_name']}");
          print("case Date : ${map['case_date']}");
          print("case Description : ${map['case_description']}");
          print("--------------");
        }
      }
    } else if (m == 3) {
      print("Please enter case no : ");
      int caseno = int.parse(stdin.readLineSync()!);
      for (int i = 0; i < cases.length; i++) {
        Map<String, dynamic> map = cases[i];
        if (caseno == map['case_no']) {
          print("Please re-enter case Name : ");
          map['case_name'] = (stdin.readLineSync()!);
          print("Please re-enter case Date : ");
          map['case_date'] = (stdin.readLineSync()!);
          print("Please re-enter case Description : ");
          map['case_description'] = (stdin.readLineSync()!);
          cases[i] = map;
        }
      }
    } else if (m == 4) {
      print("Please enter case no : ");
      int caseno = int.parse(stdin.readLineSync()!);
      for (int i = 0; i < cases.length; i++) {
        Map<String, dynamic> map = cases[i];
        if (caseno == map['case_no']) {
          cases.removeAt(i);
        }
      }
    } else
      break;

    print(
        "Please enter following choices 1.Add case \n2.Display \n3.Update \n4.Delete \n5.Quit");
    m = int.parse(stdin.readLineSync()!);
  }
}
