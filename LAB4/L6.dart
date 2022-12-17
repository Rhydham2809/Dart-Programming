// Write a dart code to count the number of even or odd numbers from an array of n numbers.

import 'dart:io';

void main(List<String> args) {
  stdout.write("Please enter the number of elements you want in array : ");
  int n = int.parse(stdin.readLineSync()!);

  List array = [];

  for (int i = 0; i < n; i++) {
    stdout.write("Please enter element${i + 1} : ");
    array.add(int.parse(stdin.readLineSync()!));
  }

  count_even_odd(array);
}

void count_even_odd(List array) {
  int even = 0, odd = 0;
  for (int i = 0; i < array.length; i++) {
    if (array[i] % 2 == 0)
      even++;
    else
      odd++;
  }
  print(
      "Number of even components are ${even} and number of odd components are ${odd}");
}
