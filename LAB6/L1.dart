// Write a dart code that prompts the user to enter 5 numbers, stores them in a List, and displays
// them in increasing order.

import 'dart:io';

void main(List<String> args) {
  List<int> numbers = [];
  stdout.write("Please enter how many elements you want : ");
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    stdout.write("Please enter number ${i + 1} : ");
    numbers.add(int.parse(stdin.readLineSync()!));
  }
  for (int i = 0; i < numbers.length; i++) {
    for (int j = 0; j < numbers.length - 1; j++) {
      if (numbers[j] > numbers[j + 1]) {
        int temp = numbers[j];
        numbers[j] = numbers[j + 1];
        numbers[j + 1] = temp;
      }
    }
  }

  print(numbers);
}
