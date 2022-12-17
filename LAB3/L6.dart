import 'dart:io';

void main(List<String> args) {
  List<int> numbers = [];
  var a = new List.empty(growable: true);
  a.add(23);
  print(a);
  int odd = 0, even = 0;

  for (int i = 0;; i++) {
    stdout.write("Please enter number ${i + 1}: ");
    numbers.add(int.parse(stdin.readLineSync()!));

    if (numbers[i] == 0) {
      print(
          "Addition of even numbers = ${even} \nAddition of odd numbers = ${odd}");
      break;
    } else {
      if (numbers[i] % 2 == 0 && numbers[i] > 0)
        even += numbers[i];
      else if (numbers[i] % 2 != 0 && numbers[i] < 0) odd += numbers[i];
    }
  }
}
