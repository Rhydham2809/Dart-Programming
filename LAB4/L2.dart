import 'dart:io';

void main(List<String> args) {
  // (Used default parameters)

  stdout.write("Please enter number 1 : ");
  int n1 = int.parse(stdin.readLineSync()!);
  stdout.write("Please enter number 2 : ");
  int n2 = int.parse(stdin.readLineSync()!);

  print("The greater numer is : ${greater_out_of_two(n1, n2)}");
}

int greater_out_of_two(int n1, int n2) {
  if (n1 > n2)
    return n1;
  else
    return n2;
}
