import 'dart:io';

void main(List<String> args) {
  stdout.write("Please enter the number : ");
  int num = int.parse(stdin.readLineSync()!);

  // Approch -1
  // if (num >= 0) {
  //   print("The given number $num is positive");
  // } else {
  //   print("The given number $num is negative");
  // }

  // Approch - 2
  if (num.sign == 0)
    print("The given number $num is Zero");
  else if (num.sign == -1)
    print("The given number $num is negative");
  else
    print("The given number $num is positive");
}
