import 'dart:io';

void main(List<String> args) {
  stdout.write("Please enter the number : ");
  int number = int.parse(stdin.readLineSync()!);

  int r = 0, answer = 0;

  while (number != 0) {
    r = number % 10;
    answer = answer * 10 + r;
    number = (number ~/ 10).toInt();
    print(number);
  }

  print("Reverse number = ${answer}");
}
