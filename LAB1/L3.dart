import 'dart:io';

void main(List<String> args) {
  print("Please enter temp in F");
  int? number = int.parse(stdin.readLineSync()!);
  print("Temp in C = ${((number - 32) * 5) / 9}");
}
