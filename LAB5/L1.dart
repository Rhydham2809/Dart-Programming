// Create a class named Candidate with Candidate_ID, Candidate_Name, Candidate_Age,
// Candidate_Weight and Candidate_Height as data members. Create a method
// GetCandidateDetails() and DisplayCandidateDetails(). Create a main method to demonstrate
// the Candidate class.

import 'dart:core';
import 'dart:io';

class Candidate {
  int? Candidate_ID;
  String? Candidate_Name;
  int? Candidate_Age;
  double? Candidate_Weight;
  double? Candidate_Height;

  List<Map<String, dynamic>> candidate = [];

  void GetCandidateDetails() {
    Map<String, dynamic> map = {};

    print("\n");
    stdout.write("Please enter Candidate_ID : ");
    map['Candidate_ID'] = int.parse(stdin.readLineSync()!);
    stdout.write("Please enter Candidate_Name : ");
    map['Candidate_Name'] = (stdin.readLineSync()!);
    stdout.write("Please enter Candidate_Age : ");
    map['Candidate_Age'] = int.parse(stdin.readLineSync()!);
    stdout.write("Please enter Candidate_Weight : ");
    map['Candidate_Weight'] = double.parse(stdin.readLineSync()!);
    stdout.write("Please enter Candidate_Height : ");
    map['Candidate_Height'] = double.parse(stdin.readLineSync()!);
    candidate.add(map);
  }

  void DisplayCandidateDetails() {
    for (int i = 0; i < candidate.length; i++) {
      Map<String, dynamic> map = candidate[i];

      print("Candidate ID       : ${map['Candidate_ID']}");
      print("Candidate Name     : ${map['Candidate_Name']}");
      print("Candidate Age      : ${map['Candidate_Age']}");
      print("Candidate Weight   : ${map['Candidate_Weight']}");
      print("Candidate Height   : ${map['Candidate_Height']}");

      print("---------------------------");
    }
  }
}

void main(List<String> args) {
  Candidate()
    ..GetCandidateDetails()
    ..GetCandidateDetails()
    ..GetCandidateDetails()
    ..DisplayCandidateDetails();
}
