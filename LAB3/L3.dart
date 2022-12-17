import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  stdout.write("Please enter a number : ");
  int a = int.parse(stdin.readLineSync()!);
  bool flag = true;

  for (int i = 2; i < sqrt(a); i++) {
    if (a % i == 0) {
      print("The number is not prime");
      flag = false;
      break;
    }
  }

  if (flag == true) {
    print("The following number is prime number");
  }
}
