import 'dart:io';

void main(List<String> args) {
  stdout.write('Please enter a number : ');
  int n = int.parse(stdin.readLineSync()!);
  int answer = 1;

  for (int i = 1; i <= n; i++) {
    answer = answer * i;
  }

  print("Factorial of ${n} is ${answer}");
}
