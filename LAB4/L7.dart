// Write a dart code to accept n numbers in an array. Display the sum of all the numbers which are
// divisible by either 3 or 5.
import 'dart:io';

void main(List<String> args) {
  stdout.write("Please enter the number of elements you want in array : ");
  int n = int.parse(stdin.readLineSync()!);

  List<int> array = [];

  for (int i = 0; i < n; i++) {
    stdout.write("Please enter element${i + 1} : ");
    array.add(int.parse(stdin.readLineSync()!));
  }

  sum_divides_by_3or5(array);
}

void sum_divides_by_3or5(List<int> array) {
  int sum = 0;
  for (int i = 0; i < array.length; i++) {
    if (array[i] % 3 == 0 || array[i] % 5 == 0) {
      sum += array[i];
    }
    ;
  }
  print(
      "The sum of all the numbers which are divisible by either 3 or 5 is ${sum}");
}
