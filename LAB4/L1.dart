import 'dart:io';

// (Used default parameters)
void main(List<String> args) {
  stdout.write("Please enter the principal value : ");
  int principal = int.parse(stdin.readLineSync()!);
  stdout.write("Please enter the rate value : ");
  int rate = int.parse(stdin.readLineSync()!);
  stdout.write("Please enter the time value : ");
  int time = int.parse(stdin.readLineSync()!);

  simpleInterst(principal, rate, time);
}

void simpleInterst(p, r, t) {
  print("The simple interst is : ${(p * r * t / 100)}");
}
