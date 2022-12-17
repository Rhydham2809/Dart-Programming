import 'dart:io';

void main(List<String> args) {
  stdout.write("Please enter number 1 : ");
  int num1 = int.parse(stdin.readLineSync()!);
  stdout.write("Please enter number 2 : ");
  int num2 = int.parse(stdin.readLineSync()!);
  stdout.write("Please enter number 3 : ");
  int num3 = int.parse(stdin.readLineSync()!);

  print((num1 > num2)
      ? ((num1 > num3) ? "$num1 is greatest" : "$num3 is greatest")
      : ((num2 > num3) ? "$num2 is greatest" : "$num3 is greatest"));
}
