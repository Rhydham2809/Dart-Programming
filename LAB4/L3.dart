// Write a dart code to generate a Fibonacci series of N given numbers using this method.
import 'dart:io';

void main(List<String> args) {
  stdout.write("Please enter the number : ");
  int n = int.parse(stdin.readLineSync()!);

  print("The answer is => ${fibonacci(n)}");
}

int fibonacci(int n) {
  int f = 1, l = 1, sum = 0, i;
  if (n == 1)
    return 0;
  else if (n == 2 || n == 3)
    return 1;
  else {
    for (i = 4; i <= n; i++) {
      sum = l + f;
      f = l;
      l = sum;
    }
    return sum;
  }
}
