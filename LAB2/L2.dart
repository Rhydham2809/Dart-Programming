import 'dart:io';

void main(List<String> args) {
  stdout.write("Please enter number 1 : ");
  int num1 = int.parse(stdin.readLineSync()!);
  stdout.write("Please enter number 2 : ");
  int num2 = int.parse(stdin.readLineSync()!);

  print(
      "Please enter the number for the functions to be perfomed \n 1.+ \n 2.- \n 3.x \n 4./ \n 5.% \n 6.quit");
  int n = int.parse(stdin.readLineSync()!);

  switch (n) {
    case 1:
      print("Answer = ${num1 + num2}");
      break;
    case 2:
      print("Answer = ${num1 - num2}");
      break;
    case 3:
      print("Answer = ${num1 * num2}");
      break;
    case 4:
      if (num2 == 0) {
        print("Please enter another value for num2");
        stdout.write("Number 2 = ");
        num2 = int.parse(stdin.readLineSync()!);
      }
      print("Answer = ${num1 ~/ num2}");
      break;
    case 5:
      print("Answer = ${num1 % num2}");
      break;
    case 6:
      break;
  }
}
