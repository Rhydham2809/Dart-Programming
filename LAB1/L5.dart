import 'dart:io';

void main(List<String> args) {
  stdout.write("Please enter a number : ");
  double a = double.parse(stdin.readLineSync()!);

  print("In feet = ${a * 3.28084} ft");
}
